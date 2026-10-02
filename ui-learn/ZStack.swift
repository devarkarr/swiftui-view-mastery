//
//  ZStack.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/2/26.
//

import SwiftUI

struct ZStack_Intro: View {
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            
          
            VStack(spacing:20){
                HeaderView("ZStack", subTitle: "Layering & Aligning", desc: "ZStacks are great for layering views. For example, putting text on top of an image.",back: .green)
                
                
                ZStack(alignment: .bottom) {
                    Image("Image1")
                        .resizable()
                        .scaledToFit()
//                        .frame(height: 300)
                    
                    Rectangle().fill(.gray.opacity(0.5)).frame(height: 70)
                    
                    Text("Hello world")
                        .font(.title)
                        .padding()
                }
            }
            .font(.title)
            
            
  
        }
       

    }
}

#Preview {
    ZStack_Intro()
}
