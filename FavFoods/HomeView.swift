//
//  HomeView.swift
//  FavFoods
//
//  Created by Ariq Heritsa on 31/07/22.
//

import SwiftUI

struct HomeView: View {
  @State private var queryFood = ""
  
  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(alignment: .leading, spacing: 0) {
          HStack {
            Image("UserPhoto")
            
            Spacer()
            
            VStack(alignment: .trailing) {
              Text("Howdy")
                .font(.custom("Poppins-Regular", size: 16))
                .foregroundColor(Color("Gray"))
              
              Text("Luna Polar")
                .font(.custom("Poppins-SemiBold", size: 16))
            }
          }
          .padding(.horizontal, 24)
          .padding(.bottom, 30)
          .padding(.top, 24)
          
          VStack(alignment: .center) {
            Text("What do you want\nfor lunch?")
              .font(.custom("Poppins-Bold", size: 22))
              .foregroundColor(Color("Navy"))
              .multilineTextAlignment(.center)
              .padding(.bottom, 24)
              .padding(.horizontal, 24)
          }.frame(width: UIScreen.main.bounds.width)
          
          HStack {
            TextField(
              "Search pizza, burger, etc...",
              text: $queryFood
            )
            .disableAutocorrection(true)
            .padding(.horizontal, 24)
            .padding(.vertical, 12)
          }
          .background(Color("LightGray"))
          .cornerRadius(120)
          .padding(.horizontal, 24)
          .padding(.bottom, 30)
          
          Text("Categories")
            .font(.custom("Poppins-SemiBold", size: 16))
            .foregroundColor(Color("Navy"))
            .padding(.horizontal, 24)
            .padding(.bottom, 12)
          
          ScrollView(.horizontal, showsIndicators: false) {
            HStack {
              CategoryPill(image: "CategoryBread", label: "Bread")
              
              CategoryPill(image: "CategoryCarrot", label: "Healthy")
              
              CategoryPill(image: "CategoryDonut", label: "Sweets")
            }
            .padding(.horizontal, 24)
          }
          .padding(.bottom, 30)
          
          Text("Most Ordered")
            .font(.custom("Poppins-SemiBold", size: 16))
            .foregroundColor(Color("Navy"))
            .padding(.horizontal, 24)
          
          VStack(spacing: 20) {
            FoodCard(
              image: "FoodOrange",
              title: "Orange Asem",
              category: "Healthy",
              rate: "4.5"
            )
            
            NavigationLink {
              DetailView()
            } label: {
              FoodCard(
                image: "FoodGyoza",
                title: "Gyoza Sapi",
                category: "Meal",
                rate: "4.8"
              )
            }
            
            FoodCard(
              image: "FoodAvocado",
              title: "Avocado Salad",
              category: "Healthy",
              rate: "4.3"
            )
            
            FoodCard(
              image: "FoodOrange",
              title: "Orange Asem",
              category: "Healthy",
              rate: "4.5"
            )
            
            FoodCard(
              image: "FoodGyoza",
              title: "Gyoza Sapi",
              category: "Meal",
              rate: "4.8"
            )
            
            FoodCard(
              image: "FoodAvocado",
              title: "Avocado Salad",
              category: "Healthy",
              rate: "4.3"
            )
          }
          .padding()
        }
      }
      .navigationBarHidden(true)
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
