//
//  GeometryReader.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/2/26.
//

import SwiftUI

struct GeometryReader_Intro: View {
    
    @State var height : CGFloat = 0.0
    var body: some View {
        
        ZStack {
            
            Color.orange.frame(height:height)
     
        VStack(spacing:20) {
            HeaderView("GeometryReader", subTitle: "Introduction", desc: nil, back: .pink.opacity(0.5))
            
            
            GeometryReader { geometryProxy in
                VStack(spacing: 20) {
                    Text("Width: \(geometryProxy.size.width)")
                    Text("Height: \(geometryProxy.size.height)")
                }
                .padding()
                .foregroundStyle(.white)
//                Image(systemName: "18.circle"
//                    .padding()
//                Image(systemName: "20.square")
//                    .padding()
//                Image(systemName: "50.circle")
//                    .padding()
            }
//            .font(.largeTitle)
//            .foregroundStyle(.white)
            .background(Color.pink)
            
            
            HStack {
                GeometryReader { geometry in
                    VStack(spacing: 10) {
                        Text("minY: \(Int(geometry.frame(in: .global).minY))")
                        Spacer()
                        Text("midY: \(Int(geometry.frame(in: .global).midY))")
                        Spacer()
                        Text("maxY: \(Int(geometry.frame(in: .global).maxY))")
                    }
                    .padding(.vertical)
                }
                .foregroundStyle(.white)
                .background(Color.pink)
                
                Image("MinMidMax")
                .resizable()
                .aspectRatio(contentMode: .fit)
            }
            
            
            
            
//            GeometryReader { geometryProxy in
//                VStack(spacing:10){
//                    Text("X: \(geometryProxy.frame(in: CoordinateSpace.local).origin.x)")
//                    
//                    Text("Y: \(geometryProxy.frame(in: CoordinateSpace.local).origin.y)")
//                }
//                
//            }
//            
            .background(.pink)
            
            
            GeometryReader { geometryProxy in
                VStack {
                    Text("geometryProxy.safeAreaInsets.leading: \(geometryProxy.safeAreaInsets.leading)")
                    Text("geometryProxy.safeAreaInsets.trailing: \(geometryProxy.safeAreaInsets.trailing)")
                    Text("geometryProxy.safeAreaInsets.top: \(geometryProxy.safeAreaInsets.top)")
                    Text("geometryProxy.safeAreaInsets.bottom: \(geometryProxy.safeAreaInsets.bottom)")
                }
                .padding()
            }.background(Color.pink).foregroundStyle(.white)
            
            
//            GeometryReader { geometryProxy in
//                VStack(spacing:10){
//                    Text("X: \(geometryProxy.frame(in: .global).origin.x)")
//                    
//                    Text("Y: \(geometryProxy.frame(in: .global).origin.y)")
//                }
//                
//            }
//            .onGeometryChange(for: CGFloat.self) { proxy in
//                            proxy.frame(in: .global).maxY
//                        } action: { newHeight in
//                            height = newHeight
//                        }
//            .background(.pink)
//            .frame(height:200)
            
//            GeometryReader { geometryProxy in
//                Text("Upper Left")
//                    .position(
//                        x: geometryProxy.size.width/5,
//                        y: geometryProxy.size.height/10
//                    )
//                
//                Text("Lower Right")
//                    .position(
//                        x: geometryProxy.size.width - 90,
//                        y: geometryProxy.size.height - 40
//                    )
//            }
//            .font(.title)
//            .foregroundStyle(.white)
//            .background(Color.pink)
        }
        .font(.title)
        }
    }
}

#Preview {
    GeometryReader_Intro()
}
