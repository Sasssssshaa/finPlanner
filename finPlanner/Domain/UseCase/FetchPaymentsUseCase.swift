//
//  FetchPaymentsUseCase.swift
//  finPlanner
//
//  Created by Admin on 23.02.26.
//

import Foundation

protocol FetchPaymentsUseCase: AnyObject {
    func execute(from date: Date?, completion: (Result<[Payment], Error>) -> Void) throws
}

class FetchPaymentsUseCaseImpl: FetchPaymentsUseCase {
    private let repository: FetchPaymentsRepository
    init(repository: FetchPaymentsRepository) {
        self.repository = repository
    }
    func execute(from date: Date?, completion: (Result<[Payment], any Error>) -> Void) throws {
        try repository.fetchPayments(from: date, completion: completion)
    }
}
