//
//  FetchPeymentRepositoryImpl.swift
//  finPlanner
//
//  Created by Admin on 23.02.26.
//

import Foundation

class FetchPeymentRepositoryImpl: FetchPaymentsRepository {
    private let dataSource: FetchPaymentDataSource
    init(dataSource: FetchPaymentDataSource) {
        self.dataSource = dataSource
    }
    func fetchPayments(from date: Date?, completion: (Result<[Payment], any Error>) -> Void) throws {
        try dataSource.fetchPayments(date: date, completion: completion)
    }
}



