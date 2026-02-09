//
//  PaymentsView.swift
//  finPlanner
//
//  Created by Admin on 27.01.26.
//

import SwiftUI

struct PaymentsView: View {
    @State var date: Date = .now
    var body: some View {
        
        ZStack(alignment: .top) {
            HeaderView(page: HeaderViewContent(totalPrice: "25 500", title: "Платежі", data: date.withoutDayMonthFormatter, pageType: .paymentsList), date: $date )
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

#Preview {
    PaymentsView()
}
