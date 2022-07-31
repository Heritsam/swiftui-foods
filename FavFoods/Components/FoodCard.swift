//
//  FoodCard.swift
//  FavFoods
//
//  Created by Ariq Heritsa on 01/08/22.
//

import SwiftUI

struct FoodCard: View {
  var image, title, category, rate: String
  
  var body: some View {
    HStack {
      Image(image)
        .padding(.trailing, 16)
      
      VStack(alignment: .leading, spacing: 4) {
        Text(title)
          .font(.custom("Poppins-Medium", size: 16))
          .foregroundColor(Color("Navy"))
        
        Text(category)
          .font(.custom("Poppins-Regular", size: 14))
          .foregroundColor(Color("Gray"))
      }
      
      Spacer()
      
      HStack {
        Text(rate)
          .font(.custom("Poppins-Medium", size: 16))
          .foregroundColor(Color("Navy"))
          .padding(.trailing, 4)
        
        Image("IconStar")
      }
    }
  }
}

struct FoodCard_Previews: PreviewProvider {
  static var previews: some View {
    FoodCard(
      image: "FoodOrange",
      title: "Orange Asem",
      category: "Healthy",
      rate: "4.5"
    )
  }
}
