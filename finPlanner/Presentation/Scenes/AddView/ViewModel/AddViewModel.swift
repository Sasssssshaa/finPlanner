//
//  AddViewModel.swift
//  finPlanner
//
//  Created by Admin on 17.02.26.
//

import SwiftUI
import Combine

class AddViewModel: ObservableObject {
    private let createUseCase: CreatePaymentUseCase
    init(createUseCase: CreatePaymentUseCase) {
        self.createUseCase = createUseCase
    }
    
    
    @Published var isNotificationSelected = false
    @Published var payType: PayType = .mounthly
    @Published var isShowCalendar = false
    @Published var isAdded: Bool = false

    //fields
    @Published var paymentName: String = ""
    @Published var description: String = ""
    @Published var paymentAmount: String = ""
    @Published var totalAmount: String = ""
    @Published var date: Date = .now
    
    func createNewPayment() {
        do {
            try createUseCase.execute(payment: Payment(id: UUID().uuidString,
                                                       type: payType,
                                                       title: paymentName,
                                                       description: description,
                                                       paymentAmount: Double(paymentAmount) ?? 0,
                                                       totalAmount: Double(paymentAmount) ?? 0,
                                                       dueDay: date.day,
                                                       dueDate: date,
                                                       isNotificationEnables: isNotificationSelected,
                                                       createdAt: .now,
                                                       lastPay: nil))
            isAdded.toggle()
        } catch {
            print(error.localizedDescription)
        }
    }
}
