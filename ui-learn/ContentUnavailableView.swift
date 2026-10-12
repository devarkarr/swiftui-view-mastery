//
//  ContentUnavailableView.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/9/26.
//

import SwiftUI

struct ContentUnavailableView_Intro: View {
    @State private var tags : [String] = []
    var body: some View {
//        ContentUnavailableView("Title", systemImage: "paintbrush",
//                               description: Text("Description (Optinal)"))
//
        
//        ContentUnavailableView(label: {
//            Label("Are you sure?", systemImage: "trash")
//        }, description: {
//            Text("Description")
//        }, actions: {
//            HStack(spacing:24) {
//                Button("Cancel",role: .cancel,action: {})
//                Button("Delete",role:.destructive,action: {}).buttonStyle(.borderedProminent)
//            }
//            .fixedSize()
//            .controlSize(.regular)
//        })
//        
//
//        if tags.isEmpty {
//        
//       
//        ContentUnavailableView(label: {
//            Label("No Tag", systemImage: "tag.fill")
//        }, description: {
//            Text("Description")
//        }, actions: {
//            HStack(spacing:24) {
//                Button(action: {
//                    tags.append("Myanmar")
//                }, label: {
//                    Text("Add Tag")
//                })
//                .buttonStyle(.borderedProminent)
//                
////                Button("Delete",role:.destructive,action: {}).buttonStyle(.borderedProminent)
//            }
//            .fixedSize()
//            .controlSize(.regular)
//        })
//        } else {
//            List(tags,id: \.self) { tag in
//                    Text(tag)
//            }
//            
//        }
        
        TabView {
            ContentUnavailableView("Look",image: "Image1",description: Text("Look through all the pictures in the book"))
            
            ContentUnavailableView("Learn",image: "Image1",description: Text("Learn what is possible."))
            
            ContentUnavailableView("Remember",image: "remember",description: Text("You can remember pictures 60k faster than code."))
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    ContentUnavailableView_Intro()
}
