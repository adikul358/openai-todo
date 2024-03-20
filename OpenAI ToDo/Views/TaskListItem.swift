//
//  TaskListItem.swift
//  OpenAI ToDo
//
//  Created by Virinchi Puvvada on 20/03/24.
//

import SwiftUI

struct TaskListItem: View {
    var name: String
    var icon: String
    var colour: Color = Color.gray
    
    var body: some View {
        
            Label {
                Text(name)
            } icon: {
                Image(systemName: icon)
                    .foregroundColor(colour)
            }
        
    }
}
