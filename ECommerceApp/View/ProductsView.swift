//
//  ProductsView.swift
//  ECommerceApp
//
//  Created by Nick Pavlov on 6/22/23.
//

import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var cartManager: CartManager
    var column = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: column) {
                    ForEach(productList, id: \.id) { product in
                        ProductCardView(product: product)
                    }
                }
                .padding()
            }
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
            .environmentObject(CartManager())
    }
}
