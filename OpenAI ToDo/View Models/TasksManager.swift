//
//  AITasksManager.swift
//  OpenAI ToDo
//
//  Created by Virinchi Puvvada on 20/03/24.
//

import Foundation

class TasksManager: ObservableObject {
    @Published var tasks: [Task] = [
        .init(id: "write-a-poem", name: "Write a poem", paras: [
            .init(type: "text", value: "Write a poem about a theme and your favourite poet."),
            .init(type: "text-input", value: "Theme", id: "THEME"),
            .init(type: "text-input", value: "Poet", id: "POET"),
        ], prompt: "Write a poem based on {THEME} themes, and in the style of poet {POET}",
              status: true),
        
        .init(id: "code-a-theorem", name: "Code a theorem", paras: [
            .init(type: "text", value: "Code a mathematical theorem. Example Stoke's Theorem, and Green's Theorem."),
            .init(type: "text-input", value: "Theorem", id: "THEOREM"),
        ], prompt: "Code the {THEOREM} in Python 3.9"),
        
        .init(id: "script-dialogue", name: "Script dialogue", paras: [
            .init(type: "text", value: "Script dialogue between two people"),
            .init(type: "text", value: "Choose the first person's name and personality"),
            .init(type: "text-input", value: "Person 1", id: "PERSON1"),
            .init(type: "text-input", value: "Person 1's Traits", id: "PERSONTRAITS1"),
            .init(type: "text", value: "Choose the second person's name and personality"),
            .init(type: "text-input", value: "Person 2", id: "PERSON2"),
            .init(type: "text-input", value: "Person 2's Traits", id: "PERSONTRAITS2")
        ], prompt: "Script a short dialogue between {PERSON1} who is {PERSONTRAITS1}, and {PERSON2} who is {PERSONTRAITS2}")
    ]
    
    init() {
        //TODO: Add Firebase
    }
}

