//
//  PaymentButtonView.swift
//  ECommerceApp
//
//  Created by Nick Pavlov on 6/22/23.
//

import SwiftUI
import PassKit

struct PaymentButtonView: View {
    var action: () -> Void
    
    var body: some View {
        Representable(action: action)
    }
}

struct PaymentButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentButtonView(action: {})
            .frame(minWidth: 100, maxHeight: 400)
            .frame(height: 45)
            .frame(maxWidth: .infinity)
    }
}

extension PaymentButtonView {
    struct Representable: UIViewRepresentable {
        var action: () -> Void
        
        func makeCoordinator() -> Coordinator {
            Coordinator(action: action)
        }
        
        func makeUIView(context: Context) -> some UIView {
            context.coordinator.button
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) {
            context.coordinator.action = action
        }
    }
    
    class Coordinator: NSObject {
        var action: () -> Void
        var button = PKPaymentButton(paymentButtonType: .continue, paymentButtonStyle: .automatic)
        
        init(action: @escaping () -> Void) {
            self.action = action
            super.init()
            
            button.addTarget(self, action: #selector(callback(_:)), for: .touchUpInside)
        }
        
        @objc func callback(_ sender: Any) {
            action()
        }
    }
}
