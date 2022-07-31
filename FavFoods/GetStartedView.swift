//
//  GetStartedView.swift
//  FavFoods
//
//  Created by Ariq Heritsa on 29/07/22.
//

import SwiftUI

struct GetStartedView: View {
  var body: some View {
    VStack {
      Image("OnboardingIllustration")
        .padding(.bottom, 50.0)
      
      VStack(alignment: .leading, spacing: 0) {
        Text("180K Store")
          .font(.custom("Poppins-Regular", size: 16))
          .foregroundColor(Color("Gray"))
        
        Text("Order Your\nFavorite Foods")
          .font(.custom("Poppins-Bold", size: 36))
          .foregroundColor(Color("Navy"))
          .padding(.bottom, 30)
        
        Button(
          action: {
            print("Haloo")
          }
        ) {
          ZStack {
            RoundedRectangle(cornerRadius: 50)
              .frame(width: UIScreen.main.bounds.size.width - 48, height: 50)
              .foregroundColor(Color("Orange"))
            
            Text("Explore now")
              .font(.custom("Poppins-SemiBold", size: 16))
              .foregroundColor(Color("White"))
          }
        }
      }
    }.padding(.all, 24)
  }
}

struct GetStartedView_Previews: PreviewProvider {
  static var previews: some View {
    GetStartedView()
  }
}
