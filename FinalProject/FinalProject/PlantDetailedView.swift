//
//  PlantDetailedView.swift
//  FinalProject
//
//  Created by Fatma Alhaifi on 28/09/2022.
//

import SwiftUI

struct PlantDetailedView: View {
    var body: some View {
        ZStack{
            Image("background")
                .edgesIgnoringSafeArea(.all)
        
        VStack(alignment: .leading, spacing: 10, content: {
            Image("carrot")
                .resizable()
                //.frame(width: 280, height: 290)
                .cornerRadius(70)
                .frame(width: 300, height: 300, alignment: .trailing)
            Text("Carrot")
                .bold()
                .font(.largeTitle)
                .frame(width: 300, height: 300)
            //future work : Add details
    //example (best time & weather to plant, how many ml water needs... )
        }
            
               )}
    }
}

struct PlantDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailedView()
    }
}
