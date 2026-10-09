//
//  LazyHGrid.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/2/26.
//

import SwiftUI

struct LazyHGrid_Intro: View {
    
    @State private var columnSpacing: CGFloat = 10
    @State private var rowSpacing: CGFloat = 20
    
    var body: some View {
        VStack(spacing:20){
//            HeaderView("LazyHGrid", subTitle: "Introduction",desc: "The LazyHGrid works like an HStack with two main differences:1. Child views can be arranged in a grid.2. Child views are only created as needed.",back:.yellow)
//            
//            let gridItems = [GridItem(.flexible(minimum: 50, maximum: 50)),GridItem(.flexible(minimum: 50, maximum: 50))]
//            
//            LazyHGrid(rows: gridItems,spacing:20) {
//                Image(systemName: "1.circle")
//                Image(systemName: "2.circle")              
//                Image(systemName: "3.circle")
//                Image(systemName: "4.circle")
//                Image(systemName: "5.circle")
//                Image(systemName: "6.circle")             
//                Image(systemName: "7.circle")
//                Image(systemName: "arrow.right.circle")
//            }
//                .font(.largeTitle)
//            
//            let rows = [GridItem(.adaptive(minimum: 20, maximum: 60))]
//            
//            LazyHGrid(rows: rows) {
//                ForEach(1 ..< 21) { item in
//                    Color.green
//                    .frame(width: 50)
//                }
//                Image(systemName: "arrow.right.circle")
//            }
//            .padding(.bottom)
            
            
            let rows = [GridItem(.fixed(40),
                                 spacing: rowSpacing),
                        GridItem(.fixed(40), spacing: rowSpacing),
                        GridItem(.fixed(40))
            ]
            
            LazyHGrid(rows: rows, spacing: columnSpacing) {
                ForEach(1 ..< 11) { item in
                    Color.green
                    .frame(width: 40, height: 40)
                }
            }
            VStack {
                Slider(value: $columnSpacing, in: 0...40, step: 5,                       minimumValueLabel: Text("0"),                       maximumValueLabel: Text("40")) { Text("Minimum Spacing")
                }
                Text("Column Spacing: \(Int(columnSpacing))")                    .padding(.bottom)
                Slider(value: $rowSpacing, in: 0...40, step: 5,                       minimumValueLabel: Text("0"),                       maximumValueLabel: Text("40")) { Text("Minimum Spacing")
                }
                Text("Row Spacing: \(Int(rowSpacing))")
            }
            .padding(.horizontal)
           
               
        }
        .font(.title)
    }
}

#Preview {
    LazyHGrid_Intro()
}
