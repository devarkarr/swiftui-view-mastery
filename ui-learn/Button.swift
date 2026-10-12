//
//  Button.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/12/26.
//

import SwiftUI

struct Button_Intro: View {
    var body: some View {
        Button(action: {}, label: {
            Text("Solid Button")
                .padding()
                .background(.purple)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color:.purple,radius: 20,y:5)
        })
        
        Button(action: {}, label: {
            Text("Solid Button")
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.purple,lineWidth: 2)
                )
        })
        
        
        Button(action: {}, label: {
           Image("Image1")
                .resizable()
                .frame(width: 300,height: 100)
                .clipShape(Capsule())
            
        })
        
        
        Button(action: {}, label: {
            Text("Button With Rounded Ends")
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 12, trailing: 20))
//                .background(.purple)
                .foregroundStyle(.white)
                .background(Color.purple, in: Capsule())
//                .clipShape(RoundedRectangle(cornerRadius: 20))
//                .shadow(color:.purple,radius: 20,y:5)
        })
        
        Button("BorderedProminent"){
            
        }.buttonStyle(.borderedProminent).tint(.purple)
        
        
        Button {} label: {
            Text("Forgot password?")
            Text("Tap to Recover").foregroundStyle(.orange)
        }
        .disabled(true)
        
        Button("Regular Button"){
            
        }
        
        Button{} label: {
            Text("Regular Button").bold()
        }
        
        
        Button("With Image & Role", systemImage: "x.circle", role: .destructive) { }
            .buttonStyle(.borderedProminent)
        
//        Button("With Image", image: .image1) { }
    }
}

#Preview {
    Button_Intro()
}
