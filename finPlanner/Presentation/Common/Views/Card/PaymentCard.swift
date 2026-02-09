//
//  PaymentCard.swift
//  finPlanner
//
//  Created by Admin on 20.01.26.
//

import SwiftUI

struct PaymentCard: View {
    @Binding var path: NavigationPath
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            VStack(alignment: .leading, spacing: 5) {
                VStack(alignment: .leading, spacing: 10) {
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Борг по кредитці")
                            .cygre(.black, 24)
                        HStack(spacing: 5) {
                            Text("$ 32.500")
                                .cygre(.black, 12)
                            Text("/ Залишок")
                                .cygre(.regular, 12)
                        }
                    }
                    Text("This course will be your personal guide to be an UI")
                        .cygre(.regular, 14)
                }
            }
            
            HStack {
                HStack(spacing: 5) {
                    Text("$ 1.200")
                        .cygre(.black, 18)
                    Text("/ місяць")
                        .cygre(.regular, 18)
                }
                Spacer()
                HStack(spacing: 5) {
                    Text("сплатити до")
                        .cygre(.light, 12)
                    Text("21.02")
                        .cygre(.black, 12)
                }
                .padding(.horizontal, 11)
                .padding(.bottom, 4)
                .foregroundStyle(.white)
                .background(.appBlack)
                .clipShape(Capsule())
                
            }
            HStack(spacing: 4) {
                FullButton(text: "Сплатити", fillColor: .appBlack, textColor: .white)
                SolidButton(text: "Детальніше", solidColor: .appBlack, backgroundColor: .clear, textColor: .appBlack) {
                    path.append(NavigationPage.details)
                }
            }
        }
        
        
        .padding(.horizontal, 12)
        .padding(.top, 10)
        .padding(.bottom, 20)
        .background(.appRed)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}
