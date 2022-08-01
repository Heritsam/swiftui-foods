//
//  DetailView.swift
//  FavFoods
//
//  Created by Ariq Heritsa on 01/08/22.
//

import SwiftUI

struct DetailView: View {
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .leading, spacing: 0) {
          VStack(alignment: .center) {
            Image("DetailGyoza")
              .padding(.horizontal, 24)
              .padding(.bottom, 20)
          }.frame(width: UIScreen.main.bounds.width)

          HStack {
            VStack(alignment: .leading, spacing: 6) {
              Text("Gyoza Sapi")
                .font(.custom("Poppins-Bold", size: 22))
                .foregroundColor(Color("Navy"))

              Text("Meal")
                .font(.custom("Poppins-Regular", size: 16))
                .foregroundColor(Color("Gray"))
            }

            Spacer()

            HStack {
              Text("4.8")
                .font(.custom("Poppins-Medium", size: 16))
                .foregroundColor(Color("Navy"))
                .padding(.trailing, 4)

              Image("IconStar")
            }
          }
          .padding(.horizontal, 24)
          .padding(.bottom, 20)

          Text("Makanan asal Bandung dengan tekstur yang lembut sehingga ketika dimakan rasanya tidak sakit tenggorokan.")
            .font(.custom("Poppins-Regular", size: 16))
            .foregroundColor(Color("Navy"))
            .padding(.horizontal, 24)
            .padding(.bottom, 30)

          Text("Bundle")
            .font(.custom("Poppins-SemiBold", size: 16))
            .foregroundColor(Color("Navy"))
            .padding(.horizontal, 24)
            .padding(.bottom, 20)

          ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
              Image("BundleOne")
              Image("BundleTwo")
              Image("BundleThree")
            }
            .padding(.horizontal, 24)
          }
          .padding(.bottom, 30)

          HStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 6) {
              Text("$808.00")
                .font(.custom("Poppins-SemiBold", size: 22))
                .foregroundColor(Color("Navy"))

              Text("/porsi")
                .font(.custom("Poppins-Regular", size: 16))
                .foregroundColor(Color("Gray"))
            }

            Spacer()

            Button(action: {}) {
              ZStack {
                RoundedRectangle(cornerRadius: 120)
                  .frame(width: UIScreen.main.bounds.width / 2 - 24, height: 50)
                  .foregroundColor(Color("Orange"))

                Text("Order now")
                  .font(.custom("Poppins-SemiBold", size: 16))
                  .foregroundColor(Color("White"))
              }
            }
          }
          .padding(.horizontal, 24)
        }
      }
      .navigationBarTitleDisplayMode(.inline)
      .navigationBarHidden(true)
    }
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView()
  }
}
