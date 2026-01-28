//
//  ContentView.swift
//  finPlanner
//
//  Created by Admin on 14.01.26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            HeaderView(page: HeaderViewContent(totalPrice: "Сума боргу", title: "723 343 $", data: "15 січня", pageType: .main), action: {
                print("add")
            })
            .zIndex(1)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 19) {
                    MainViewContentHeader()
                    VStack(alignment: .leading, spacing: 19) {
                        PaymentCard()
                        PaymentCard()
                        PaymentCard()

                    }
                }
                .padding(.top, 130)
                .padding(.bottom, 70)
                
            }
        }
        .padding(.horizontal, 20)
        .background(.appBlack)
    }
}




#Preview {
    ContentView()
}
