import SwiftUI
import Firebase
struct SurveyView: View {
    @State private var selectedOptions = [Int: String]() // Question ID mapped to selected option
    var questions: [Question]
    @ObservedObject var data = SharedData.shared
    var body: some View {
        List {
            ForEach(questions) { question in
                Section(header: Text(question.text).font(.headline)) {
                    ForEach(question.options, id: \.self) { option in
                        Button(action: {
                            selectedOptions[question.id] = option
                        }) {
                            HStack {
                                Text(option)
                                Spacer()
                                if selectedOptions[question.id] == option {
                                    Image(systemName: "checkmark")
                                }
                            }
                        }
                        .tag(option)
                    }
                }
            }
        }
        .listStyle(GroupedListStyle())
        Button("Submit"){
            submitResponses()
            data.finishDaily.toggle()
        }
    }

    func submitResponses() {
        let db = Firestore.firestore()

        // Transform the responses for Firestore
        var responsesData: [String: Any] = Dictionary(uniqueKeysWithValues: selectedOptions.map { (key, value) in (String(key), value) })
        
        responsesData["user"] = FirebaseManager.shared.currentID

        // Add the data to a new document in a "surveyResponses" collection
        db.collection("survey").addDocument(data: responsesData) { error in
            if let error = error {
                print("Error adding document: \(error)")
            } else {
                print("Responses successfully added!")
                // Optionally, reset responses or navigate away
                self.selectedOptions.removeAll()
            }
        }
    }

}
