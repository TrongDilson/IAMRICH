//
//  ContentView.swift
//  IAMRICH
//
//  Created by Trong Tran Vinh on 17/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        GeometryReader
        { geo in
            ZStack
            {
                Image("peacemaker_bing_chilling_by_ambone105_deycw6u-fullview")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    
                VStack
                {
                    Image("rmit-logo-white")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(30.0)
                        .frame(width: 350.0, alignment: .center)
                        .glowBorder(color: .black, lineWidth: 2)
                    Spacer()
                    Text("BING CHILLING\n\tFOR RICH PEOPLE")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .glowBorder(color: .red, lineWidth: 10)
                        .glowBorder(color: .blue, lineWidth: 7)
                        .multilineTextAlignment(.center)
                    
                    Image("diamond-fancy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(10.0)
                        .frame(width: 200.0, height: 200.0, alignment: .bottom)
                        .glowBorder(color: .white, lineWidth: 9)
                    Button
                    {
                        showingAlert = true
                        print("CONGRATULATIONS!!\nYOUR PRIZE IS EQUIVILANT TO 9,999,999,999 BING CHILLING")
                    } label:
                    {
                        Text("CLICK HERE")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .glowBorder(color: .red, lineWidth: 8)
                            .glowBorder(color: .blue, lineWidth: 4)
                            .multilineTextAlignment(.center)
                            .padding(20)
                            .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(.white, lineWidth: 5)
                            )
                    } .alert(isPresented: $showingAlert)
                    {
                        Alert(title: Text("ATTENTION!"), message: Text("GET A LOT OF NAPKINS\nYOUR PRIZE IS EQUIVILANT TO 9,999,999,999 BING CHILLING"), dismissButton: .default(Text("SIR YES SIR!")))
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
