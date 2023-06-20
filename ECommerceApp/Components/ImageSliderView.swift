//
//  ImageSliderView.swift
//  ECommerceApp
//
//  Created by Nick Pavlov on 6/20/23.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex = 0
    var slides = ["fn1", "fn2", "fn3", "fn4", "fn5"]
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .trailing) {
                Image(slides[currentIndex])
                    .resizable()
                    .scaledToFit()
                    .frame(width: .infinity, height: 180)
                    .cornerRadius(15)
            }
            HStack {
                ForEach(0..<slides.count, id: \.self) { index in
                    Circle()
                        .fill(currentIndex == index ? Color("kPrimary"): Color("kSecondary"))
                        .frame(width: 10, height: 10)
                }
            }
            .padding()
        }
        .padding()
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
                if currentIndex + 1 == slides.count {
                    currentIndex = 0
                } else {
                    currentIndex += 1
                }
            }
        }
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView()
    }
}
