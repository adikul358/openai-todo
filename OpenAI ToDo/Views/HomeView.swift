//
//  ContentView.swift
//  OpenAI To-Do
//
//  Created by Aditya Kulshrestha on 17/03/2024.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var tasksManager: TasksManager
    @State var isShowingAbout: Bool = false
    
    var body: some View {
        
        NavigationStack {
            VStack (alignment: .leading){
                HStack{
                    Text("An app to explore various prompts with ChatGPT. Complete all the tasks!")
                    Spacer()
                }
                .padding()
                List {
                    ForEach(tasksManager.tasks, id: \.id) { task in
                        NavigationLink(value: task) {
                            if (task.status) {
                                TaskListItem(name: task.name, icon: "checkmark.circle.fill", colour: Color.green)
                            } else {
                                TaskListItem(name: task.name, icon: "circle")
                            }
                        }
                        
                    }
                    
                }
                Spacer()
            }
            .navigationTitle("Home")
            .navigationBarItems(trailing:
                Button {
                    isShowingAbout.toggle()
                } label: {
                    Image(systemName: "info.circle")
                }
                .sheet(isPresented: $isShowingAbout) {
                    AboutView().presentationDetents([.height(200)])
                }
            )
            .navigationDestination(for: Task.self) {task in
                TaskView(task: task, paras: ParaManager(para: task.paras))
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView(tasksManager: TasksManager())
        }
    }
}
