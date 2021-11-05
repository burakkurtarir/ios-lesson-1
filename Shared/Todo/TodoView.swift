//
//  TodoView.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 20.09.2021.
//

import SwiftUI

struct TodoView: View {
    @ObservedObject private var todoViewModel = TodoViewModel()
    
    var body: some View {
        List(todoViewModel.todoList) { todo in
            HStack {
                Text(todo.text)
                CompletedToggle(isCompleted: todo.isCompleted)
            }
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView()
    }
}

struct CompletedToggle : View {
    @State var isCompleted : Bool
    var body: some View {
        Toggle("Tamamlandı", isOn: $isCompleted)
    }
}
