//
//  CategoryPill.swift
//  FavFoods
//
//  Created by Ariq Heritsa on 01/08/22.
//

import SwiftUI

struct CategoryPill: View {
  var image, label: String
  
  var body: some View {
    HStack {
      Image(image)
        .padding(.trailing, 12)
      
      Text(label)
        .font(.custom("Poppins-Medium", size: 16))
        .foregroundColor(Color("Navy"))
    }
    .padding(.all, 5)
    .padding(.trailing, 18)
    .background(Color("LightGray"))
    .cornerRadius(120)
  }
}

struct CategoryPill_Previews: PreviewProvider {
  static var previews: some View {
    CategoryPill(image: "CategoryBread", label: "Bread")
  }
}
