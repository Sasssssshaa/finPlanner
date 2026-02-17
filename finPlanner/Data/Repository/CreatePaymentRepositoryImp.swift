//
//  CreatePaymentRepositoryImp.swift
//  finPlanner
//
//  Created by Admin on 16.02.26.
//

import Foundation

class CreatePaymentRepositoryImp: CreatePaymentRepository {
    
    private let dataSource: CreatePaymentDataSource
        init(dataSource: CreatePaymentDataSource) {
            self.dataSource = dataSource
        }
    
    func createPayment(payment: Payment) throws {
        try dataSource.createNewPayment(payment: payment)
    }
    
    
}
