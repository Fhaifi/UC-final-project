//
//  Ezraa.swift
//  FinalProject
//
//  Created by Fatma Alhaifi on 27/09/2022.
//

import SwiftUI

struct Ezraa: View {
    @State var searchTxt = ""
    @State var isActive: Bool = false
    var plants = [
    Plants(title: "Carrot", image: "carrot"),
    Plants(title: "Tomatto", image: "tomato"),
    Plants(title: "Cucumber", image: "cu1"),
    Plants(title: "Lettuce", image: "lettuce"),
    Plants(title: "Watermelon", image: "watermelon"),
    Plants(title: "Onion", image: "onion"),
    Plants(title: "Garlic", image: "g"),
    Plants(title: "Eggplant", image: "ep"),
    Plants(title: "Coriander", image: "Coriander")
    ]
    var body: some View {
        VStack{
            // Future work: scroolling & search text bar
            //ScrollView(.vertical){
            //$searchTxt
            //ScrollView{
            //searchable(text: $searchTxt)
            //SearchBar(text: $searchTxt)
            List(plants) { plants in
                NavigationLink(destination: PlantDetailedView(), isActive: self.$isActive, label: {
                    //HStack{
                        Image(plants.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(15)
                        Text(plants.title)
                        .font(.largeTitle)
                        //.foregroundColor(.mint)
                        //.SystemGreen
                    //}
                })
            }
            // future work : add more plants such as fruit, veges, ...
            //.navigationTitle("Vegetables")
            //}
        .navigationTitle("Plants")
        }
    }
}

struct Ezraa_Previews: PreviewProvider {
    static var previews: some View {
        Ezraa()
            .previewInterfaceOrientation(.portrait)
    }
}

struct Plants: Identifiable {
    var id = UUID()
    var title: String
    var image: String
}
