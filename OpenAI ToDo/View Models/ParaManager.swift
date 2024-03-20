//
//  ParaManger.swift
//  OpenAI ToDo
//
//  Created by Virinchi Puvvada on 20/03/24.
//

import Foundation
import SwiftUI

class ParaManager: ObservableObject {
    var paraData: [Para]
    @Published var inputIndex: [String: Int] = [:]
    @State var inputs: [String] = ["", "", "", "", ""]
    @Published var paraView: [ParaView] = []
    private var inputCount: Int = -1
    
    init(para: [Para]) {
        paraData = para
        
        for p in paraData {
            if (p.type == "text") {
                paraView.append(ParaView(view: AnyView(
                    Text(p.value).frame(maxWidth: .infinity, alignment: .leading)
                )))
            } else if (p.type == "text-input") {
                inputCount += 1
                inputIndex[p.id!] = inputCount
                print(inputIndex)
                print(inputs)
                paraView.append(ParaView(view: AnyView(
                    TextField(p.value, text: $inputs[inputCount])
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.gray.opacity(0.5), lineWidth: 1)
                        )
                )))
                
            }
        }
        
    }
}

struct ParaView: Identifiable {
    var id = UUID()
    var view: AnyView
}
