//
//  CartManager.swift
//  ECommerceApp
//
//  Created by Nick Pavlov on 6/20/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products = [Product]()
    @Published private(set) var total = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}
