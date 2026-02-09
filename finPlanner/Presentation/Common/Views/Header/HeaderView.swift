//
//  MainHeaderView.swift
//  finPlanner
//
//  Created by Admin on 19.01.26.
//

import SwiftUI

struct HeaderView: View {
    var page: HeaderViewContent
    var action: (() -> Void)?
    @Binding var date: Date
    var body: some View {
        VStack(alignment: .leading,  spacing: -5) {
            HStack {
                Text("\(page.totalPrice) $")
                    .cygre(.black, 27)
                    .foregroundStyle(.white)
                    .offset(y: -2)
                
                Spacer()
                
                if page.pageType == .main {
                    Button {
                        action?()
                    } label: {
                        ZStack {
                            Circle()
                                .fill(.appYellow)
                                .frame(width: 25)
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 11)
                                .foregroundStyle(.appBlack)
                        }
                    }
                }
                
                
                
            }
            
            VStack(alignment: .leading, spacing: -7) {
                HStack {
                    Text(page.title)
                        .cygre(.black, 32)
                    Spacer()
                    
                    if page.pageType == .paymentsList {
                        DatePicker("", selection: $date, displayedComponents: [.date])
                            .frame(width: 22)
                            .clipped()
                            .overlay {
                                Image(systemName: "calendar")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 25, height: 25)
                                    .background(.appBlack)
                                    .allowsHitTesting(false)
                            }
                    }
                }
               
                Text(page.data)
                    .cygre(.light, 16)
            }
            .foregroundStyle(.appYellow)
        }
        .padding(.bottom, 20)
        .background(.appBlack)
    }
}
