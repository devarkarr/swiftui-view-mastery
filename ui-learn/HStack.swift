//
//  HStack.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/2/26.
//

import SwiftUI

struct HStack_Intro: View {
    var body: some View {
        VStack(spacing:20){
            
            HeaderView("HStack", subTitle: "Introduction", desc: "The HStack initializer allows you to set the spacing between all the views inside the HStack.",back: .orange)
            
//            HStack{
//                Rectangle().foregroundStyle(.orange).frame(width: 25)
//                Text("Leading")
//                Spacer()
//                Text("Center")
//                Spacer()
//                Text("Trailing")
//            }
//            .border(.orange)
            
            HStack {
                Text("The HStack initializer allows you to set the spacing between all the views inside the HStack.")
                    .lineLimit(1)
                Text("The HStack initializer allows.")
                    .layoutPriority(1)
            }
           
            
            HStack(alignment:.top){
                Rectangle().foregroundStyle(.orange).frame(width: 25)
                Text("Leading")
                Spacer()
                Text("Center")
                Spacer()
                Text("Trailing")
            }
            .border(.orange)
            
            HStack(alignment:.firstTextBaseline){
                Text("Amazing  developerdeveloper")
                Text("Really amazing developer")
                    .font(.title3)
              
            }
            .frame(width: 250)
            
            HStack(alignment:.lastTextBaseline){
                Text("Amazing developerdeveloper")
                Text("Really amazing developer")
                    .font(.title3)
           
            }
            .frame(width: 250)
            
            
            HStack(spacing: 20) {
                Image(systemName: "a.circle.fill")
                Image(systemName: "b.circle.fill")
                Image(systemName: "c.circle.fill")
                Image(systemName: "d.circle.fill")
                Image(systemName: "e.circle.fill")
            }
            .font(.largeTitle).padding()
            .background(
                RoundedRectangle(cornerRadius: 10).fill(.orange)
            )

            HStack(spacing: 20) {
                Image(systemName: "a.circle.fill")
                Image(systemName: "b.circle.fill")
                Image(systemName: "c.circle.fill")
                Image(systemName: "d.circle.fill")
                Image(systemName: "e.circle.fill")
            }
            .font(.largeTitle).padding()
            .background(
                .orange
            )

            
        }
        
    }
}

#Preview {
    HStack_Intro()
}
