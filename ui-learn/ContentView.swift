//
//  ContentView.swift
//  ui-learn
//
//  Created by Ar Kar Lin on 10/1/26.
//

import SwiftUI

//struct Person {
//    var personType: String {
//        "human"
//    }
//}

struct HeaderView : View {
    let title: String
    let subTitle : String
    let desc : String?
    let back: Color
    let textColor : Color
    
    init( _ title: String, subTitle: String, desc: String? = nil, back: Color = .blue, textColor: Color = .white) {
        self.title = title
        self.subTitle = subTitle
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
        
        Text(subTitle)
            .foregroundStyle(.gray)
        
        if let description = desc {
            Text(description)
                .frame(maxWidth: .infinity)
                .foregroundStyle(textColor)
                .padding()
                .background(back)
        }
       
        
    }
}


struct Person: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}

struct Team: Identifiable {
    let id = UUID()
    let name: String
    let people: [Person]
}

extension Team {
    static var mockTeams: [Team] {
        let systemIcons = ["person.fill", "star.fill", "bolt.fill", "heart.fill", "flame.fill", "globe"]
        
        return (1...100).map { teamIndex in
            let members = (1...10).map { memberIndex in
                Person(
                    name: "Member \(memberIndex)",
                    imageName: systemIcons.randomElement() ?? "person.fill"
                )
            }
            return Team(name: "Team \(teamIndex)", people: members)
        }
    }
}


struct ContentView: View {
    
    @State private var teams: [Team] = Team.mockTeams
    
    var body: some View {
      
     
        
        VStack(spacing:10){
            
            HeaderView("LazyVStack", subTitle: "Introduction", desc: "When using the LazyVStack by itself, you won't notice much of a                                 differe",back: .purple)
//                .layoutPriority(1)
           
//            Text("LazyVStack")
//            LazyVStack(spacing: 10) {
//                Image(systemName: "1.circle")
//                Image(systemName: "2.circle")
//                Image(systemName: "3.circle")
//            }
//            .border(Color.red, width: 2)
//            
//            
//            Text("VStack")
//            VStack(spacing: 10) {
//                Image(systemName: "1.circle")
//                Image(systemName: "2.circle")
//                Image(systemName: "3.circle")
//            }
//            .border(Color.red, width: 2)
//            
//            
//            Text("Notice the LazyVStack pushes out horizontally. (No Spacers being used here.)")
            
            ScrollView {
                LazyVStack(spacing:5 , pinnedViews: [.sectionHeaders]){
                    ForEach(teams) {team in
                        
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
                            
                        }  header : {
                            Text("\(team.name)")
                                .frame(maxWidth: .infinity)
                                .background(
                                Rectangle().fill(.orange)
                            )
                        }
                        
                    }
                }
            }
            
                
        }
        .font(.title)
            
  
        
    }
}

#Preview {
    ContentView()
//        .preferredColorScheme(.dark)
}
