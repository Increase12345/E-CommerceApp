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
    var width: String
    var height: String
    var diameter: String
}

var productList = [
    Product(name: "Leather Couch", image: "fn1", description: "Our Denton collection blends a classic, clean silhouette with simple, modern styling for a tailored look. Each piece is covered in a soft, family-friendly polyester fabric and has attached back cushions filled with Dacron. The reversible seat cushions will keep this set looking new for years to come. Built right in the heart of Dallas, Texas, each piece is assembled and hand-upholstered by Texans for Texans!", supplier: "Wallmart", price: 350, width: "200 cm", height: "135 cm", diameter: "105 cm"),
    Product(name: "Nice Couch", image: "fn2", description: "Our Denton collection blends a classic, clean silhouette with simple, modern styling for a tailored look. Each piece is covered in a soft, family-friendly polyester fabric and has attached back cushions filled with Dacron. The reversible seat cushions will keep this set looking new for years to come. Built right in the heart of Dallas, Texas, each piece is assembled and hand-upholstered by Texans for Texans!", supplier: "IKEA", price: 270, width: "200 cm", height: "100 cm", diameter: "50 cm"),
    Product(name: "Gray Couch", image: "fn3", description: "Our Denton collection blends a classic, clean silhouette with simple, modern styling for a tailored look. Each piece is covered in a soft, family-friendly polyester fabric and has attached back cushions filled with Dacron. The reversible seat cushions will keep this set looking new for years to come. Built right in the heart of Dallas, Texas, each piece is assembled and hand-upholstered by Texans for Texans!", supplier: "Home Depot", price: 590, width: "200 cm", height: "400 cm", diameter: "350 cm"),
    Product(name: "Table suit", image: "fn4", description: "Our Denton collection blends a classic, clean silhouette with simple, modern styling for a tailored look. Each piece is covered in a soft, family-friendly polyester fabric and has attached back cushions filled with Dacron. The reversible seat cushions will keep this set looking new for years to come. Built right in the heart of Dallas, Texas, each piece is assembled and hand-upholstered by Texans for Texans!", supplier: "Office Depot", price: 200, width: "80 cm", height: "30 cm", diameter: "100 cm"),
    Product(name: "Couch Set", image: "fn5", description: "Our Denton collection blends a classic, clean silhouette with simple, modern styling for a tailored look. Each piece is covered in a soft, family-friendly polyester fabric and has attached back cushions filled with Dacron. The reversible seat cushions will keep this set looking new for years to come. Built right in the heart of Dallas, Texas, each piece is assembled and hand-upholstered by Texans for Texans!", supplier: "King Soopers", price: 350, width: "200 cm", height: "240 cm", diameter: "500 cm"),
    Product(name: "Dinner table", image: "fn6", description: "Our Denton collection blends a classic, clean silhouette with simple, modern styling for a tailored look. Each piece is covered in a soft, family-friendly polyester fabric and has attached back cushions filled with Dacron. The reversible seat cushions will keep this set looking new for years to come. Built right in the heart of Dallas, Texas, each piece is assembled and hand-upholstered by Texans for Texans!", supplier: "Amazon", price: 340, width: "250 cm", height: "140 cm", diameter: "230 cm"),
]
