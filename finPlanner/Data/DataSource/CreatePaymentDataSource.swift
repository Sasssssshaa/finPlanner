//
//  CreatePaymentDataSource.swift
//  finPlanner
//
//  Created by Admin on 16.02.26.
//

import Foundation

protocol CreatePaymentDataSource {
    func createNewPayment(payment: Payment) throws 
}
