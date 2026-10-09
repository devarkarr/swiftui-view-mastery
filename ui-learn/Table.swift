//
//  Table.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/9/26.
//

import SwiftUI

struct ColorInfo : Identifiable {
    let id = UUID()
    var name = ""
    var desc = Color.clear
}

struct Table_Intro: View {
    @State private var colors = [
        ColorInfo(name:"Red",desc: .red),
        ColorInfo(name:"Blue",desc: .blue),
        ColorInfo(name:"Purple",desc: .purple),
    ]
    
    var body: some View {
        Table(colors){
            TableColumn("Names") { color in
                Text(color.name)
            }
            TableColumn("Colors") { color in
                color.desc
            }
        }
        .font(.title)
    }
}

#Preview {
    Table_Intro()
}
