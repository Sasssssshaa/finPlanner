//
//  CreatePaymentRepository.swift
//  finPlanner
//
//  Created by Admin on 16.02.26.
//

import Foundation

protocol CreatePaymentRepository: AnyObject {
    func createPayment(payment: Payment) throws 
}
