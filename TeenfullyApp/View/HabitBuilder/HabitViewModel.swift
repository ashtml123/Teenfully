//
import FirebaseAuth
import FirebaseFirestore
import Combine

struct Habit: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    var completedTimes: Int
}


class HabitViewModel: ObservableObject {
    @Published var habits: [Habit] = []
    private var db = Firestore.firestore()
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        loadHabits()
    }
    
    func loadHabits() {
        guard let userId = Auth.auth().currentUser?.uid else { return }
        
        db.collection("users").document(userId).collection("habits").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("Error fetching habits: \(String(describing: error))")
                return
            }
            self.habits = documents.compactMap { queryDocumentSnapshot in
                let data = queryDocumentSnapshot.data()
                guard let id = UUID(uuidString: data["id"] as? String ?? ""),
                      let name = data["name"] as? String,
                      let description = data["description"] as? String,
                      let completedTimes = data["completedTimes"] as? Int else {
                    return nil
                }

                return Habit(id: id, name: name, description: description, completedTimes: completedTimes)
            }
        }
    }
    
    func saveHabit(habit: Habit) {
        guard let userId = Auth.auth().currentUser?.uid else { return }
        
        let habitData: [String: Any] = [
            "id": habit.id.uuidString,
            "name": habit.name,
            "description": habit.description,
            "completedTimes": habit.completedTimes
        ]
        
        db.collection("users").document(userId).collection("habits").document(habit.id.uuidString).setData(habitData) { error in
            if let error = error {
                print("Error adding habit: \(error)")
            } else {
                print("Habit successfully added!")
            }
        }
    }
    
    
    func deleteHabit(at index: Int) {
        guard let userId = Auth.auth().currentUser?.uid else { return }
        let habit = habits[index]
        
        db.collection("users").document(userId).collection("habits").document(habit.id.uuidString).delete() { error in
            if let error = error {
                print("Error removing habit: \(error)")
            } else {
                print("Habit successfully removed!")
            }
        }
    }
    
    func increaseCompletedTimes(for habit: Habit) {
        guard let userId = Auth.auth().currentUser?.uid else { return }
        
        let updatedCompletedTimes = habit.completedTimes + 1
        let docRef = db.collection("users").document(userId).collection("habits").document(habit.id.uuidString)
        
        docRef.updateData(["completedTimes": updatedCompletedTimes]) { error in
            if let error = error {
                print("Error updating habit: \(error)")
            } else {
                print("Habit successfully updated!")
            }
        }
    }
    
}
