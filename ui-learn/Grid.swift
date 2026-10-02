//
//  Grid.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/2/26.
//

import SwiftUI

struct Grid_Intro: View {
    var body: some View {
     
            
        ZStack {
            
   
        Grid(alignment: .top) {
//            GridRow {
//                ForEach(1..<3) { number in                    Image(systemName: "\(number).square")
//                }
//                
//            }
//            GridRow {
//                Text("Column 1")
//                Text("Column 2")
//            }
//            GridRow {
//                RoundedRectangle(cornerRadius: 16)                    .fill(Color.blue.opacity(0.5))
//                RoundedRectangle(cornerRadius: 16)                    .fill(Color.orange.opacity(0.5))                    .frame(width: 150)
//            }
//            
//            RoundedRectangle(cornerRadius: 16).fill(.pink.opacity(0.5))
//            
//            
//            GridRow {
//                RoundedRectangle(cornerRadius: 16).fill(.blue.opacity(0.5))
//
//            }
//            GridRow {
//                ForEach(1..<8) { number in                    Image(systemName: "\(number).square")
//                }
//            }
            
//            GridRow {
//                Color.blue.opacity(0.5)
//                Color.orange.opacity(0.5)                    .frame(width: 75)
//                Color.red.opacity(0.5)
//            }
//            GridRow {
//                Color.blue.opacity(0.5)
//                    .gridCellUnsizedAxes(.vertical)
//                Color.orange.opacity(0.5)                                .gridCellUnsizedAxes(.vertical)
//                    .gridCellUnsizedAxes(.horizontal)
//
//                Color.red.opacity(0.5).frame(height: 150)
//            }
//            
//            GridRow {
//                Text("Top")
//                Color.blue.opacity(0.5)
//            }
//            GridRow(alignment: .bottom) {
//                Text("Bottom")
//                VStack(alignment: .trailing){
//                    Text("Top")
//                    Text("Trailing")
//                }
//                .gridCellAnchor(.topTrailing)
//                Color.blue.opacity(0.5)
            
            
//            }
            
            GridRow{
                Color.green.opacity(0.5)
                    .gridCellColumns(3)
            }
            GridRow{
                Color.blue.opacity(0.5)
                Color.red.opacity(0.5)
                    .gridCellColumns(2)
            }
            GridRow{
                Color.blue.opacity(0.5)
                Color.yellow.opacity(0.5)
                Color.red.opacity(0.5)
            }
            GridRow{
                Color.yellow.opacity(0.5)
                    .gridCellColumns(2)
                Color.red.opacity(0.5)
            }
        }
        .font(.largeTitle)
        }
        .ignoresSafeArea()
        
//        Grid(horizontalSpacing: 20, verticalSpacing: 15) {
//            GridRow {
//                Color.green.opacity(0.5)
//                Color.green.opacity(0.5)
//                Color.green.opacity(0.5)
//            }
//            GridRow {
//                Color.blue.opacity(0.5)
//                Color.orange.opacity(0.5)
//                Color.red.opacity(0.5)
//            }
//            GridRow {
//                Color.blue.opacity(0.5)
//                Color.orange.opacity(0.5)
//                Color.red.opacity(0.5)
//            }
//            GridRow {
//                Color.orange.opacity(0.5)
//                Color.orange.opacity(0.5)
//                Color.red.opacity(0.5)
//            }
//        }
        
        
    }
}

#Preview {
    Grid_Intro()
}
