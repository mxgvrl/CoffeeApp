//
//  DrinkItem.swift
//  CoffeeApp
//
//  Created by Max on 26.10.2019.
//  Copyright © 2019 maximgavrilovich. All rights reserved.
//

import SwiftUI

struct DrinkItem: View {
    var drink : Drink
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(drink.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            //NavigationLink(destination: DrinkDetail(drink: drink))

            
        VStack(alignment: .leading, spacing: 5.0) {
            Text(drink.name)
                .foregroundColor(.primary)
                .font(.headline)
            Text(drink.description)
                .foregroundColor(.secondary)
                .font(.subheadline)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(height: 40)
            }
            
        }
    }
}

struct DrinkItem_Previews: PreviewProvider {
    static var previews: some View {
        DrinkItem(drink: drinkData[0])
    }
}