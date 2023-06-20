//
//  Product.swift
//  ECommerceApp
//
//  Created by Nick Pavlov on 6/18/23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
}

var productList = [
    Product(name: "Leather Couch", image: "fn1", description: "description", supplier: "IKEA", price: 350),
    Product(name: "Nice Couch", image: "fn1", description: "description", supplier: "Wallmart", price: 350),
    Product(name: "Grau Couch", image: "fn1", description: "description", supplier: "IKEA", price: 350),
    Product(name: "Outdoor Couch", image: "fn1", description: "description", supplier: "Home Depot", price: 350),
    Product(name: "Green Couch", image: "fn1", description: "description", supplier: "IKEA", price: 350),
    Product(name: "Beautiful Couch", image: "fn1", description: "description", supplier: "Wallmart", price: 350)
]
