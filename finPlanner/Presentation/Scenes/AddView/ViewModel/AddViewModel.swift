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
    
    @Published var payment: Payment?
    
    func createNewPayment() {
        do {
            try createUseCase.execute(payment: Payment(id: UUID().uuidString,
                                                       type: .mounthly,
                                                       title: "fefafe",
                                                       description: "efsefs",
                                                       paymentAmount: 10,
                                                       totalAmount: 20,
                                                       isNotificationEnables: true,
                                                       createdAt: .now))
        } catch {
            print(error.localizedDescription)
        }
    }
}
