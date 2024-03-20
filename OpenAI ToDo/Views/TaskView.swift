//
//  TaskView.swift
//  OpenAI ToDo
//
//  Created by Aditya Kulshrestha on 20/03/24.
//

import SwiftUI
import AnimateText

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct TaskView: View {
    var task: Task
    @ObservedObject var paras: ParaManager
    
    var body: some View {
        @Environment(\.dismiss) var dismiss
        VStack(spacing: 4){
            ForEach(paras.paraView, id: \.id) { p in
                p.view
            }
            .padding(.bottom, 30)
            HStack {
                Spacer()
                Button("Prompt", action: {})
                    .padding(8)
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(8)
            }
            Spacer()
            
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(task.name)
    }
}
