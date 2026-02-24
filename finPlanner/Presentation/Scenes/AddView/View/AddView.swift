//
//  aS.swift
//  finPlanner
//
//  Created by Admin on 04.02.26.
//

import SwiftUI



struct AddView: View {
    
    
    @StateObject var viewModel: AddViewModel = Assembly.createAddViewModel()
    
    var body: some View {
        VStack(alignment: .center, spacing: 27) {
            Text("Додати платежі")
                .cygre(.black, 18)
                .foregroundStyle(.appYellow)
            
            if !viewModel.isAdded {
                addViewContent
            } else {
                Spacer()
                addSuccess
                Spacer()
            }
            
            
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 20)
        .frame(maxWidth: .infinity)
        .background(.appBlack)
        
    }
}

#Preview {
    AddView()
}


extension AddView {
    var addViewContent: some View {
        VStack(alignment: .center, spacing: 27) {
            VStack(alignment: .leading, spacing: 25) {
                
                HStack(spacing: 23) {
                    SolidButton(text: "Кожен місяць", solidColor: .appYellow, textColor: .appYellow, isFull: viewModel.payType == .mounthly) {
                        viewModel.payType = .mounthly
                    }
                    SolidButton(text: "Одноразово", solidColor: .appYellow, textColor: .appYellow, isFull: viewModel.payType == .oneTime) {
                        viewModel.payType = .oneTime
                    }
                }
                
                switch viewModel.payType {
                case .mounthly:
                    HStack(spacing: 4) {
                        DatePicker("", selection: $viewModel.date, displayedComponents: [.date])
                            .frame(width: 25)
                            .clipped()
                            .overlay {
                                Text("\(viewModel.date.day)")
                                    .underline()
                                    .cygre(.black, 16)
                                    .foregroundStyle(.appMint)
                                    .frame(width: 27)
                                    .padding(.vertical, 4)
                                    .background(.appBlack)
                                    .allowsHitTesting(false)
                            }
                        
                        Text("числа")
                            .cygre(.light, 14)
                            .foregroundStyle(.appMint)
                        
                    }
                case .oneTime:
                    HStack(spacing: 4) {
                        Text("До")
                            .foregroundStyle(.appMint)
                            .cygre(.light, 14)
                        
                        
                        DatePicker("", selection: $viewModel.date, displayedComponents: [.date])
                            .frame(width: 140)
                            .clipped()
                            .overlay {
                                Text(viewModel.date.dayMonthYear)
                                    .cygre(.black, 16)
                                    .foregroundStyle(.appMint)
                                    .underline()
                                    .frame(width: 142)
                                    .padding(.vertical, 4)
                                    .background(.appBlack)
                                    .allowsHitTesting(false)
                                
                            }
                    }
                }
                
            }
            
            VStack(alignment: .leading, spacing: 12) {
                FieldView(placeholder: "Призначення платежу", text: $viewModel.paymentName)
                
                switch viewModel.payType {
                case .mounthly:
                    HStack(spacing: 10) {
                        FieldView(placeholder: "Загальна сума", text: $viewModel.totalAmount, isPriceField: true)
                        FieldView(placeholder: "Щомісячний платіж", text: $viewModel.paymentAmount, isPriceField: true)
                    }
                case .oneTime:
                    FieldView(placeholder: "Загальна сума", text: $viewModel.totalAmount, isPriceField: true)
                }
                
                FieldView(placeholder: "Опис", text: $viewModel.description, isTextField: false)
            }
            
            HStack {
                Text("Повідомлення о платежах")
                    .cygre(.regular, 14)
                    .foregroundStyle(.appYellow)
                    .offset(y: -3)
                
                Spacer()
                RadioButtonView(isSelected: $viewModel.isNotificationSelected)
            }
            .padding(.horizontal, 10)
            Spacer()
            FullButton(text: "Додати", fillColor: .appYellow, textColor: .appBlack) {
                viewModel.createNewPayment()
            }
        }
    }
}
extension AddView {
    var addSuccess: some View {
        
            VStack(spacing: 55) {
                Image(systemName: "checkmark.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 127, height: 127)
                    .foregroundStyle(.appYellow)
                Text("Платіж додано")
                    .cygre(.black, 22)
                    .foregroundStyle(.appYellow)
            
        }
    }
}
