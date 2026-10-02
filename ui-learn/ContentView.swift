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
      
     
        
        VStack(spacing:10){
            
            HeaderView("Title", subTitle: "Subtitle", desc: "Short description of what i am demonstrating goes here.",back: .purple)
            
            VStack {
                Text("Vstack inside another vstack")
                Divider()
                Text("This can be helpful, Why?")
                Divider()
                Text("More than 10 views creates an error.")
                

            }
            .font(.title3)
            .padding()
            .foregroundStyle(.white)
            .background(
                RoundedRectangle(cornerRadius: 20).fill(.blue)
            )
            .padding()
            
            VStack(alignment: .leading,spacing: 40) {
                Text("Leading Alignment")
                Divider()
            Image(systemName: "arrow.left")
    

            }
            .font(.title3)
            .padding()
            .foregroundStyle(.white)
            .background(
                RoundedRectangle(cornerRadius: 20).fill(.blue)
            )
            .padding()
            
            VStack(alignment: .trailing,spacing: 40) {
                Text("Trailing Alignment")
                Divider()
            Image(systemName: "arrow.right")
    

            }
            .font(.title3)
            .padding()
            .foregroundStyle(.white)
            .background(
                RoundedRectangle(cornerRadius: 20).fill(.blue)
            )
            .padding()
            
                
        }
        .font(.title)
            
  
        
    }
}

#Preview {
    ContentView()
//        .preferredColorScheme(.dark)
}
