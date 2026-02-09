//
//  ContentView.swift
//  finPlanner
//
//  Created by Admin on 14.01.26.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAddView: Bool = false
    @State var payType: PayType = .mounthly
    @Binding var path: NavigationPath
    var body: some View {
        ZStack(alignment: .top) {
            HeaderView(page: HeaderViewContent(totalPrice: "723 343", title: "Сума боргу", data: "15 січня", pageType: .main), action: {
                isShowAddView.toggle()
            }, date: .constant(.now))
            .zIndex(1)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 19) {
                    MainViewContentHeader(payType: $payType)
                    VStack(alignment: .leading, spacing: 19) {
                        switch payType {
                        case .mounthly:
                            PaymentCard(path: $path)
                            PaymentCard(path: $path)
                            PaymentCard(path: $path)
                            PaymentCard(path: $path)
                        case .oneTime:
                            PaymentCard(path: $path)
                            PaymentCard(path: $path)
                        }
                       

                    }
                }
                .padding(.top, 130)
                .padding(.bottom, 70)
                
            }
        }
        .padding(.horizontal, 20)
        .background(.appBlack)
        .sheet(isPresented: $isShowAddView) {
            AddView()
        }
    }
}




//
