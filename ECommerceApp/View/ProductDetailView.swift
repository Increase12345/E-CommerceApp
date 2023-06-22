//
//  ProductDetailView.swift
//  ECommerceApp
//
//  Created by Nick Pavlov on 6/22/23.
//

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    
    var body: some View {
        ScrollView {
            ZStack {
                Color.white
                
                VStack(alignment: .leading) {
                    ZStack(alignment: .topTrailing) {
                        Image(product.image)
                            .resizable()
                            //.scaledToFit()
                            .frame(height: 300)
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.top, 63)
                            .padding(.trailing, 20)
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text(product.name)
                                .font(.title2.bold())
                            
                            Spacer()
                            
                            Text("$\(product.price).00")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                                .background(Color("kSecondary"))
                                .cornerRadius(12)
                        }
                        .padding(.vertical)
                        
                        HStack(spacing: 10) {
                            ForEach(0..<5, id: \.self) { index in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.yellow)
                            }
                            Text("(4.5)")
                                .foregroundColor(.secondary)
                        }
                        .padding(.vertical)
                        
                        Text("Description")
                            .font(.title3)
                            .fontWeight(.medium)
                        Text(product.description)
                    }
                }
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: productList[4])
    }
}
