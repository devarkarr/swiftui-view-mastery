//
//  ColorPicker_Intro.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/12/26.
//

import SwiftUI

struct ColorPicker_Intro: View {
    @State private var color : Color = .pink
    @State private var date : Date = Date()
    var body: some View {
        HeaderView("ColorPicker", subTitle: "Introduction", desc: "Use the ColorPicker to provide your users with color options. You                        will need to bind it to a color variable to store the color selected.",back: color)
        Spacer()
        Text("Default style pulls in:")
        
        Form {
            DatePicker("Today", selection: $date,                           displayedComponents: .date)
                .background(
                    RoundedRectangle(cornerRadius: 20,style: .continuous)
                        .fill(.purple.opacity(0.4))
                        .shadow(radius: 20)
                )
//            Section {
//                Text("Graphical Picker Style:")
//                DatePicker("Birthday", selection: $date,                               displayedComponents: .date)
//                .datePickerStyle(.graphical)
//            }
        }
        
//
//        DatePicker("Today",selection: $date,displayedComponents: .date)
//            .labelsHidden()
//            .padding(.horizontal)
        DatePicker("Birthday", selection: $date, displayedComponents: .date)
//            .datePickerStyle(.graphical)
            .frame(width: 320)
        
        Spacer()

        ColorPicker("Pick a Color", selection: $color)
            .padding(.horizontal)
        Spacer()
    }
}

#Preview {
    ColorPicker_Intro()
}
