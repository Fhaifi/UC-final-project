//
//  ContentView.swift
//  FinalProject
//
//  Created by Fatma Alhaifi on 25/09/2022.
//


import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false
    var body: some View {
        NavigationView{
            ZStack 
            {
                if self.isActive{
                    Ezraa()
                }
                else
                {
                Image("background")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Image(systemName: "leaf")
                        .foregroundColor(.secondary)
                        .font(.system(size: 50, weight: .light, design: .monospaced))
                        
                    Text("Ezraa")
                        //.clipShape()
                        .foregroundColor(.secondary)
                        .font(.system(size: 60, weight: .light, design: .serif))
                        .tracking(8)
                       .frame(height: 20)
                       //.multilineTextAlignment(.leading)
                }
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(false)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
            }
        }
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}


