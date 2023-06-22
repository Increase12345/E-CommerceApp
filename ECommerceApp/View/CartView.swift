//
//  CartView.swift
//  ECommerceApp
//
//  Created by Nick Pavlov on 6/22/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) { product in
                    CartProductView(product: product)
                }
                HStack {
                    Text("Your total is ")
                    Spacer()
                    Text("$ \(cartManager.total).00")
                        .bold()
                }
                .padding()
                
                PaymentButtonView(action: {})
                    .padding()
                
            } else {
                Text("You Cart is Empty")
            }
        }
        .navigationTitle("My Cart")
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
