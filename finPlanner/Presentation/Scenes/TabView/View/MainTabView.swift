//
//  MainTabView.swift
//  finPlanner
//
//  Created by Admin on 16.01.26.
//

import SwiftUI

struct MainTabView: View {
    @State var selectionPag: TabPage = .main
    @Binding var path: NavigationPath
    
    init(path: Binding<NavigationPath>) {
        UITabBar.appearance().isHidden = true
        self._path = path
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectionPag) {
                ContentView(path: $path)
                    .tag(TabPage.main)
                PaymentsView(path: $path)
                    .tag(TabPage.paymentsList)
            }
            
            HStack(spacing: 62) {
                TabItem(image: "house", text: "Головна", pageType: .main, selected: $selectionPag)
                TabItem(image: "list.bullet.rectangle.portrait", text: "Платежи", pageType: .paymentsList, selected: $selectionPag)
            }
            .frame(maxWidth: .infinity)
            .padding(.top, 20)
            .padding(.bottom, 1)
        }
    }
}

 


