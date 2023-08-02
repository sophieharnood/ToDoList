//
//  ContentView.swift
//  ToDoList
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                 
                Spacer()
                Button(action: {                      self.showNewTask = true
                }) {
                    Text("+")
                        .font(.system(size: 40))
            }// closing button
            }// closing h stack
            .padding()
            Spacer()
        
        }// closing vstack
        List {
            ForEach (toDoItems) { toDoItem in
                Text(toDoItem.title)
            }
        }
        if showNewTask {
            NewToDoView (title: "", isImportant: false, toDoItems: $toDoItems)
                }
    } // closing view
} // closing struct

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
