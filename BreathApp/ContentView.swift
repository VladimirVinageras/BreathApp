//
//  ContentView.swift
//  BreathApp
//
//  Created by Vladimir Vinakheras on 17.01.2024.
//

import SwiftUI

struct ContentView: View {
    //animations variables
    @State var scaleUpDown = true
    @State var rotationInOut = false
    @State var moveInOut = true
    
    var body: some View {
        ZStack {
            //Background
            Rectangle()
                .foregroundColor(.black)
                .edgesIgnoringSafeArea(.all)
            //Circles
            ZStack{
                ZStack{
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [.green,.white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120, alignment: .center)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [.green,.white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120, alignment: .center)
                        .offset(y: moveInOut ? 60 : 0)
                }.opacity(0.5)
                
                ZStack{
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [.green,.white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120, alignment: .center)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [.green,.white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120, alignment: .center)
                        .offset(y: moveInOut ? 60 : 0)
                }.opacity(0.5)
                    .rotationEffect(.degrees(60))
                
                ZStack{
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [.green,.white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120, alignment: .center)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [.green,.white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120, alignment: .center)
                        .offset(y: moveInOut ? 60 : 0)
                }.opacity(0.5)
                    .rotationEffect(.degrees(120))
            }
            .rotationEffect(.degrees(rotationInOut ? 90 : 0 ))
            .scaleEffect(scaleUpDown ? 1 : 1/4)
            .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(1/8), value: moveInOut)
        }
        .onAppear(){
            scaleUpDown.toggle()
            rotationInOut.toggle()
            moveInOut.toggle()
            
        }
    }
}

#Preview {
    ContentView()
}
