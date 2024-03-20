//
//  TypeWriterView.swift
//  OpenAI ToDo
//
//  Created by Aditya Kulshrestha on 20/03/24.
//

import SwiftUI

struct TypeWriterView: View {
    let text: String
    @State private var currText: String = ""
    
    var body: some View {
        Text(currText)
    }
    
    
    func typeWriter(at position: Int = 0) {
        if position == 0 {
            currText = ""
        }
        if position < text.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.08) {
                currText.append(text[position])
                typeWriter(at: position + 1)
            }
        }
    }
}


struct TypeWriterView_Previews: PreviewProvider {
    static var previews: some View {
        TypeWriterView(text: "Aditya")
    }
}

extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
