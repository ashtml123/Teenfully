import SwiftUI

struct HabitBuilderView: View {
    @ObservedObject var viewModel = HabitViewModel()
    @State private var showingAddHabit = false
    @State private var newHabitName = ""
    @State private var newHabitDescription = ""

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.habits) { habit in
                                    HStack {
                                        Text(habit.name)
                                        Spacer()
                                        Button(action: {
                                            viewModel.increaseCompletedTimes(for: habit)
                                        }) {
                                            Image(systemName: "plus.circle.fill")
                                                .foregroundColor(.green)
                                        }
                                        Text("\(habit.completedTimes)")
                                    }
                }
                .onDelete(perform: deleteHabit)
            }
            .navigationBarTitle("Habit Builder")
            .navigationBarItems(leading: EditButton(), trailing: Button(action: {
                self.showingAddHabit = true
            }) {
                Image(systemName: "plus")
            })
            .sheet(isPresented: $showingAddHabit) {
                VStack {
                    TextField("Name of habit", text: self.$newHabitName)
                    TextField("Description", text: self.$newHabitDescription)
                    Button("Save") {
                        let habit = Habit(name: self.newHabitName, description: self.newHabitDescription, completedTimes: 0)
                        viewModel.saveHabit(habit: habit)
                        self.showingAddHabit = false
                    }
                    .padding()
                }
                .padding()
            }
        }
    }
    func deleteHabit(at offsets: IndexSet) {
        offsets.forEach { index in
            viewModel.deleteHabit(at: index)
        }
    }
}
