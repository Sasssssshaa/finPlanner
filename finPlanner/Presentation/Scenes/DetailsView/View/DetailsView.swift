//
//  DetailsView.swift
//  finPlanner
//
//  Created by Admin on 27.01.26.
//

import SwiftUI

struct DetailsView: View {
    @State var isNotificationSelected: Bool = false
    @Binding var path: NavigationPath
    var body: some View {
        VStack(alignment: .leading) {
            header
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: -8) {
                    Text("82,200 $")
                        .cygre(.black, 27)
                        .foregroundStyle(.white)
                    Text("Кредит на айфон")
                        .cygre(.black, 16)
                        .foregroundStyle(.appYellow)
                }
                .padding(.vertical, 20)
                
                VStack(alignment: .leading, spacing: 26) {
                    VStack(alignment: .leading, spacing: 17) {
                        HStack(spacing: 16) {
                            InfoTagView(text: "$ 60,200")
                            InfoTagView(text: "$ 3,200")
                        }
                        
                        Text("Lorem ipsum dolor sit, consectetur adisicipen elit, sed to exlt do tempor in vivito, try es est lorempium. Ut amin pay mau, peresiten on malis")
                            .cygre(.regular, 14)
                            .foregroundStyle(.appMint)
                    }
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Divider()
                            .background(.appGray)
                        
                        HStack {
                            Text("Найближчий платіж")
                                .cygre(.regular, 14)
                                .foregroundStyle(.appYellow)
                                .offset(y: -3)
                            Spacer()
                            HStack(spacing: 4) {
                                Text("сплачено")
                                    .cygre(.regular, 12)
                                Text("31.01")
                                    .cygre(.black, 12)
                            }
                            .padding(.horizontal, 10)
                            .padding(.bottom, 4)
                            .background(.appYellow)
                            .clipShape(Capsule())
                        }
                        .padding(.horizontal, 10)
                        
                        Divider()
                            .background(.appGray)
                        
                        HStack {
                            Text("Повідомлення о платежах")
                                .cygre(.regular, 14)
                                .foregroundStyle(.appYellow)
                                .offset(y: -3)
                            
                            Spacer()
                            
                            RadioButtonView(isSelected: $isNotificationSelected)
                        }
                        .padding(.horizontal, 10)
                    }
                }
            }
            Spacer()
            VStack(alignment: .leading, spacing: 18) {
                SolidButton(text: "Закрити достроково", solidColor: .appYellow, textColor: .appBlack, isFull: true)
                SolidButton(text: "Видалити останній платіж", solidColor: .appYellow, textColor: .appYellow)
            }
        }
        .padding(.horizontal, 20)
        .background(.appBlack)
        .navigationBarHidden(true)
    }
}



extension DetailsView {
    var header: some View {
        HStack {
            Button {
                path.removeLast()
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.appYellow)
                    .frame(width: 20, height: 20)
            }
            
            Spacer()
            
            Text("Деталі платежу")
                .cygre(.black, 18)
                .foregroundStyle(.appYellow)
            
            Spacer()
            
            Button {
                //
            } label: {
                Image(systemName: "trash")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.appYellow)
                    .frame(width: 20, height: 20)
            }


        }
    }
}

