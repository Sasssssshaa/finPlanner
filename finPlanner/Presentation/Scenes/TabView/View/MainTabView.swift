//
//  MainTabView.swift
//  finPlanner
//
//  Created by Admin on 16.01.26.
//

import SwiftUI

struct MainTabView: View {
    @State var selectionPag: TabPage = .paymentsList
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectionPag) {
                ContentView()
                    .tag(TabPage.main)
                PaymentsView()
                    .tag(TabPage.paymentsList)
            }
            
            HStack(spacing: 62) {
                TabItem(image: "house", text: "Головна", pageType: .main, selected: $selectionPag)
                TabItem(image: "list.bullet.rectangle.portrait", text: "Платежи", pageType: .paymentsList, selected: $selectionPag)
            }
            .frame(maxWidth: .infinity)
            .padding(.top, 20)
            .padding(.bottom, 1)
            //.background(.appBlack)
        }
    }
}

#Preview {
    MainTabView()
}

struct TabItem: View {
    var image: String
    var text: String
    var pageType: TabPage
    @Binding var selected: TabPage
    var body: some View {
        Button {
            selected = pageType
        } label: {
                VStack {
                    Image(systemName: image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16, height: 16)
                    Text(text)
                        .cygre(.light, 10)
                }
                .foregroundStyle(pageType == selected ? .appBlack : .appYellow)
                .padding(.top, 6)
                .padding(.horizontal, 17)
                .background(selected == pageType ? .appYellow : .clear)
                .clipShape(RoundedRectangle(cornerRadius: 35))
        }
    }
}
