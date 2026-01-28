//
//  PaymentsView.swift
//  finPlanner
//
//  Created by Admin on 27.01.26.
//

import SwiftUI

struct PaymentsView: View {
    var body: some View {
        
        ZStack(alignment: .top) {
            HeaderView(page: HeaderViewContent(totalPrice: "25 500 $", title: "Платежі", data: "В січні 2026", pageType: .paymentsList), action: {
                print("show calendar")
            })
                .zIndex(1)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 19) {
                    PaymentCard()
                    PaymentCard()
                }
                .padding(.top, 135)
                .padding(.bottom, 70)
            }
        }
        .padding(.horizontal, 20)
        .background(.appBlack)
    }
}
