//
//  FetchPaymentDataSource.swift
//  finPlanner
//
//  Created by Admin on 23.02.26.
//

import Foundation

protocol FetchPaymentDataSource {
    func fetchPayments(date: Date?, completion: (Result<[Payment], Error>) -> Void) throws
}
