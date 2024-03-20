//
//  About.swift
//  OpenAI ToDo
//
//  Created by Virinchi Puvvada on 20/03/24.
//

import SwiftUI

struct AboutView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Image("aboutimage")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
            Text("OpenAI ToDo v0.0.1")
                .fontWeight(.semibold)
            Spacer(minLength: 30)
            Text(.init("Developed by [Aditya Kulshrestha](https://github.com/adikul358)"))
            
        }
        .padding()
    }
}

#Preview {
    AboutView()
}
