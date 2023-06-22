//
//  AppBarView.swift
//  ECommerceApp
//
//  Created by Nick Pavlov on 6/20/23.
//

import SwiftUI

struct AppBarView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    Text("Colorado, USA")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    NavigationLink {
                        Text("")
                    } label: {
                        CartButtonView(numberOfProducts: cartManager.products.count)
                    }
                }
                Text("Find The Most \nLuxurious")
                    .font(.largeTitle.bold())
                + Text(" Furniture")
                    .font(.largeTitle.bold())
                    .foregroundColor(Color("kPrimary"))
            }
        }
        .padding()
        .environmentObject(CartManager())
    }
}
