//
//  Form_Intro.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/12/26.
//

import SwiftUI

struct SectionTextAndImage : View {
    let name: String
    let image: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
            Text(name)
        }
        .font(.title)
        .foregroundStyle(.purple)
    }
}

struct Form_Intro: View {
    var body: some View {
        Form {
            Section {
                Text("This is a Form!")
                    .font(.title)
                Text("You can put any content in here")
                Text("The cells will grow to fit the content")
                Text("Remember, it's just views inside of views")
//                    .listRowBackground(Color.purple)
                    .listRowBackground(Image("Image1").blur(radius: 10))
                Text("Indent Level 1")
                    .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 0, trailing: 0))
            } header: {
                Text("Section Header Text")
            }
            .headerProminence(.standard)
            
            
            Section {
                Text("Limitations")
                    .font(.title)
                Text("There are built-in margins that are difficult to get around. Take a look                       at the color below so you can see where the margins are:")
                Color.purple
            } header: {
                SectionTextAndImage(name: "People", image: "person.2.square.stack.fill")
            }
            
            Section {
                Text("Summary")
                    .font(.title)
                Text("Pretty much what you see here is what you get.")
            } footer: {
                Text("Total: $500000").bold()
            }
        }
    }
}

#Preview {
    Form_Intro()
}
