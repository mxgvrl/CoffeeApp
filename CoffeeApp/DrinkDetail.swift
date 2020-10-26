//
//  DrinkDetail.swift
//  CoffeeApp
//
//  Created by Max on 26.10.2019.
//  Copyright © 2019 maximgavrilovich. All rights reserved.
//

import SwiftUI

struct DrinkDetail: View {
    var drink: Drink
    var body: some View {
        List{
            ZStack(alignment: .bottom) {
                Image(drink.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack{
                    VStack(alignment: .leading, spacing: 8){
                        Text(drink.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            
            .listRowInsets(EdgeInsets())
            VStack(alignment: .leading) {
                Text(drink.description)
                    .font(.body)
                    .foregroundColor(.primary)
                    .lineLimit(nil)
                    .lineSpacing(12)
                    
                HStack {
                    Spacer()
                    OrderButton()
                    Spacer()
                }.padding(.top, 50)
            }
        }
    }
}

struct OrderButton : View {
    var body: some View {
        Button(action: {}) {
            Text("Order Now")
        }.frame(width: 200, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .font(.headline)
            .cornerRadius(10)
    }
}

struct DrinkDetail_Previews: PreviewProvider {
    static var previews: some View {
        DrinkDetail(drink: drinkData[3])
    }
}
