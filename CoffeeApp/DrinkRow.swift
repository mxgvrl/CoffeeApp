//
//  DrinkRow.swift
//  CoffeeApp
//
//  Created by Max on 26.10.2019.
//  Copyright © 2019 maximgavrilovich. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    var categoryName : String
    var drinks : [Drink]
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                Text(self.categoryName)
                    .font(.title)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top) {
                        //NavigationLink(destination: DrinkDetail(drink: drink))
                        //NavigationLink(destination: DrinkDetail)
                        ForEach(self.drinks, id: \.name){ drink in
                        DrinkItem(drink: drink)
                            .frame(width: 300)
                            .padding(.trailing, 30)
                            
                        }
                    }
                }
            }
        }
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "HOT DRINKS", drinks: drinkData)
    }
}
