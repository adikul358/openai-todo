////
////  genParas.swift
////  OpenAI ToDo
////
////  Created by Aditya Kulshrestha on 20/03/24.
////
//
//import Foundation
//import SwiftUI
//
//struct GenParasView: View {
//    var data: [TaskData]
//    var 
//    
//    @State private var inputs: [String] = []
//    for p in data.paras {
//        if (p.id != nil) {
//            print(p.id!)
//            inputs.append(p.id!)
//        }
//        print(inputs)
//        
//    }
//    
//    return AnyView(VStack {
//        ForEach (data.paras, id: \.self) { para in
//            Text(para.value)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//            if (para.id == "textinput") {
//                    Text(para.id!)
//                    Text(inputs.firstIndex(of: data.id!) ?? "0")
//                  
////                        TextField(data.value, text: $inputs[0])
////                            .padding(10)
////                            .overlay(
////                                RoundedRectangle(cornerRadius: 8)
////                                    .stroke(.gray.opacity(0.5), lineWidth: 1)
////                            )
//            
//            }
//        }
//    })
//}
//
//    
////    if (task.id == "write-a-poem") {
////        
////        return AnyView(
////            VStack (spacing: 24) {
////                Text("Write a poem about a theme and your favourite poet.")
////                    .frame(maxWidth: .infinity, alignment: .leading)
////                TextField("Theme", text: $theme)
////                    .padding(10)
////                    .overlay(
////                        RoundedRectangle(cornerRadius: 8)
////                            .stroke(.gray.opacity(0.5), lineWidth: 1)
////                    )
////                TextField("Poet", text: $poet)
////                    .padding(10)
////                    .overlay(
////                        RoundedRectangle(cornerRadius: 8)
////                            .stroke(.gray.opacity(0.5), lineWidth: 1)
////                    )
////                HStack {
////                    Spacer()
////                    Button(action: {UIApplication.shared.endEditing(); prompted=true; typewriter1(); typewriter2()}) {
////                        Text("Prompt")
////                            .foregroundColor(.white)
////                    }
////                    .padding(.vertical, 10)
////                    .padding(.horizontal, 20)
////                    .background(.blue)
////                    .cornerRadius(8)
////                }
////                .padding(.bottom, 30)
////                
////                if (prompted) {
////                    Text("Generating prompt...")
////                        .font(.title3)
////                        .fontWeight(.semibold)
////                        .frame(maxWidth: .infinity, alignment: .leading)
////                    VStack{
////                        Text("Write a poem on the themes of ") +
////                        Text(currTheme).foregroundColor(.green) +
////                        Text(" in the style of poet ") +
////                        Text(currPoet).foregroundColor(.green)
////                    }.frame(maxWidth: .infinity, alignment: .leading)
////                }
////                
////                Spacer()
////                    
////            }
////        )
////        func typewriter1(at position: Int = 0) {
////            if position == 0 {
////                currTheme = ""
////            }
////            if position < theme.count {
////                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
////                    currTheme.append(theme[position])
////                    typewriter1(at: position + 1)
////                }
////            }
////        }
////        func typewriter2(at position: Int = 0) {
////            if position == 0 {
////                currPoet = ""
////            }
////            if position < poet.count {
////                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
////                    currPoet.append(poet[position])
////                    typewriter2(at: position + 1)
////                }
////            }
////        }
////    }
////    return AnyView(VStack {
////        Text("Invalid task id")
////            .frame(maxWidth: .infinity, alignment: .leading)
////    })
////}
