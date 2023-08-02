//
//  NewToDoView.swift
//  ToDoList
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct NewToDoView: View {
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
        }
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: [ToDoItem]
    var body: some View {
        VStack {
            Text("Task title:")
            TextField("Enter the task description..." , text: $title)
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
            } // closing toggle
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
            }) {
                Text("Add")
            } // closing button
            
        }// closing v stack
        .padding()
    }// closing view
} // clsoing struct

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, toDoItems: .constant([]))
    }
}
