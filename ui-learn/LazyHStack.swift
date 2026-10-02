//
//  LazyHStack.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/2/26.
//

import SwiftUI

struct LazyHStack_Intro: View {
    
    @State private var teams: [Team] = Team.mockTeams

    var body: some View {
        ScrollView(.horizontal){
            LazyHStack(spacing: 5, pinnedViews: [.sectionHeaders]){
                ForEach(teams) { team in
                    Section {
                        ForEach(team.people) { person in
                            HStack {
                                Image(systemName: person.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                
                                Text(person.name)
                                    .font(.body)
                                
                                Spacer()
                                
                            }
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(8)
                            .padding(.horizontal)
                            .onAppear {
                                print("Loaded \(team.name) - \(person.name)")
                            }
                        }
                    } header : {
                        Text("\(team.name)")
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 10).fill(.orange)
                            )
                    }
                }
            }
        }
    }
}

#Preview {
    LazyHStack_Intro()
}
