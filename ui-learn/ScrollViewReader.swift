//
//  ScrollViewReader.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/9/26.
//

import SwiftUI

struct ScrollViewReader_Intro: View {
    var body: some View {
        VStack(spacing:20){
            HeaderView("ScrollViewReader", subTitle: "Introduction", desc: "Use the ScrollViewReader to access the scrollTo function so you can programmatically scroll to a specific view.",back: .yellow)
            
            ScrollViewReader{ ScrollViewProxy in
                Button("Scroll 25 To Top") {                    withAnimation {
                    ScrollViewProxy.scrollTo(25, anchor: .center)
                }
                }
                
                Button("Scroll to Bottom"){
                    withAnimation {
                        ScrollViewProxy.scrollTo(50)
                    }
                }
                
                ScrollView {
                    ForEach(1..<51) { index in
                        getImage(for: index)
                            .font(.largeTitle)
                            .frame(height:70)
                            .id(index)
                    }
                }
                
                Button("Scroll to Top"){
                    withAnimation{
                        ScrollViewProxy.scrollTo(1)
                    }
                }
                
            }
            
        }
    }
    
    func getImage(for index: Int) -> some View {
        if index == 1 || index == 50 {
            return Image(systemName: "\(index).square.fill")                .foregroundStyle(Color.red)        }
        return Image(systemName: "\(index).square")            .foregroundStyle(Color.primary)
    }
}




#Preview {
    ScrollViewReader_Intro()
}
