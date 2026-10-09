//
//  SwiftUIView.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/9/26.
//

import SwiftUI

struct ControlGroup_Intro: View {
    var body: some View {
        VStack(spacing:20){
            HeaderView("ControlGroup", subTitle: "Introduction", desc: "Use a ControlGroup view to group up related controls.",back: .blue)
            
            ControlGroup {
                Button("Hello"){
                    
                }
                Button(action: {}, label: {
                    Image(systemName: "gearshape.fill")
                })
            }
            
            ControlGroup {
                Button("Hello"){
                    
                }
                Button(action: {}, label: {
                    Image(systemName: "gearshape.fill")
                })
            }
            .controlGroupStyle(.navigation)
        }
    }
}

#Preview {
    ControlGroup_Intro()
}
