//
//  FetchPaymentsRepository.swift
//  finPlanner
//
//  Created by Admin on 23.02.26.
//

import Foundation

protocol FetchPaymentsRepository: AnyObject {
    func fetchPayments(from date: Date?, completion: (Result<[Payment], Error>) -> Void) throws
}
