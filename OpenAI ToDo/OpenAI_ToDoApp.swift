//
//  OpenAI_To_DoApp.swift
//  OpenAI To-Do
//
//  Created by Aditya Kulshrestha on 17/03/2024.
//

import SwiftUI

@main
struct OpenAI_To_DoApp: App {
    @StateObject var tasksManager = TasksManager()
    
    var body: some Scene {
        WindowGroup {
            HomeView(tasksManager: tasksManager)
        }
    }
}
