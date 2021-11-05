//
//  TodoViewModel.swift
//  lesson2 (iOS)
//
//  Created by Eralp Mobile on 16.09.2021.
//

import Foundation

class TodoViewModel: ObservableObject {
    let jsonURL = "https://jsonplaceholder.typicode.com/todos"
    
    @Published var todoList:[TodoModel] = []
    
    init() {
        todoList = [
            TodoModel(id: 0, text: "Akşam koşuya git", isCompleted: false),
            TodoModel(id: 1, text: "Oyun geliştirmeyi öğren", isCompleted: false),
            TodoModel(id: 2, text: "Leyla ile Mecnun izle", isCompleted: false),
            TodoModel(id: 3, text: "Bilgisayar oyunu oyna", isCompleted: false),
        ]
    }
    
    func insert(todo: TodoModel) -> Void {
        todoList.insert(todo, at: 0)
    }
    
    func remove(index: Int) -> Void {
        todoList.remove(at: index)
    }
    
}
