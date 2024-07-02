//
//  ContentView.swift
//  War Card Game
//
//  Created by Aditya Kharbanda on 30/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard: String = "card2"
    @State var cpuCard: String = "card3"
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    var body: some View {
        ZStack{
            Image("background-plain")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            Spacer()
            VStack(){
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
            Spacer()
            
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
            Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.title)
                            .padding(.bottom, 20.0)
                        Text(String(playerScore))
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.title)
                            .padding(.bottom, 20.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                .padding()
            Spacer()
            }
        }
    }
    
    func deal(){
        let i: Int = Int.random(in: 2...14)
        let j: Int = Int.random(in: 2...14)
        
        playerCard = "card" + String(i)
        cpuCard = "card" + String(j)
        
        if i > j{
            playerScore += 1
        }
        else if j > i{
            cpuScore += 1
        }
        else{
            print("Tie!")
        }
    }
}

#Preview {
    ContentView()
}
