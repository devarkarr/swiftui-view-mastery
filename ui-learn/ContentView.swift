//
//  ContentView.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/1/26.
//

import SwiftUI

struct Person {
    var personType: String {
        "human"
    }
}

struct HeaderView : View {
    let title: String
    let subTitle : String
    let desc : String
    let back: Color
    let textColor : Color
    
    init( _ title: String, subTitle: String, desc: String, back: Color = .blue, textColor: Color = .white) {
        self.title = title
        self.subTitle = subTitle
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
        
        Text(subTitle)
            .foregroundStyle(.gray)
        
        Text(desc)
            .frame(maxWidth: .infinity)
            .foregroundStyle(textColor)
            .padding()
            .background(back)
        
    }
}


struct ContentView: View {
    var body: some View {
        
        ScrollView {
            
     
        
        VStack(spacing:20){
            
            HeaderView("Title", subTitle: "Subtitle", desc: "Short description of what i am demonstrating goes here.",back: .purple)
            
            Image(systemName: "heart.fill")
                .font(.largeTitle)
            
            Image("Image1")
                .resizable()
                .frame(width: 300,height: 300)
                .opacity(0.7)
                .background(.red.opacity(0.7))
                .background(.orange.opacity(0.5))
                .overlay(Text("Hi").foregroundStyle(.green))
            
            Text("This text has a rounded rectangle behind it")
                .foregroundStyle(.white)
                .padding(.vertical,5)
                .padding(.horizontal)
                .background(
                    RoundedRectangle(cornerRadius: 20).fill(.purple)
                )
         
                
        }
        .font(.title)
            
            
            Image(systemName: "arrow.down")
            HStack{
                Image(systemName: "arrow.right")
                Text("Text views pull in")
                Image(systemName: "arrow.left")

            }
            Image(systemName: "arrow.up")
            
            
//            Color.purple
//                .overlay(Image(systemName: "arrow.up.left").padding(),alignment: .topLeading)
//                .overlay(Image(systemName: "arrow.up.right").padding(),alignment: .topTrailing)
//                .overlay(Image(systemName: "arrow.down.left").padding(),alignment: .bottomLeading)
//                .overlay(Image(systemName: "arrow.down.right").padding(),alignment: .bottomTrailing)
//                .overlay(Text("Colors are push out view"))
                
            
        }
     
        Color.purple
            .overlay(Image(systemName: "arrow.up.left").padding(),alignment: .topLeading)
            .overlay(Image(systemName: "arrow.up.right").padding(),alignment: .topTrailing)
            .overlay(Image(systemName: "arrow.down.left").padding(),alignment: .bottomLeading)
            .overlay(Image(systemName: "arrow.down.right").padding(),alignment: .bottomTrailing)
            .overlay(Text("Colors are push out view"))
            
        
    }
}

#Preview {
    ContentView()
//        .preferredColorScheme(.dark)
}
