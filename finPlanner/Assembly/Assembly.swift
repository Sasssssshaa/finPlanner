//
//  Assembly.swift
//  finPlanner
//
//  Created by Admin on 17.02.26.
//

import Foundation

class Assembly {
    static func createViewModel() {
        
    }
    
    static func createAddViewModel() -> AddViewModel {
        let manager = CreatePaymentManager()
        let repo = CreatePaymentRepositoryImp(dataSource: manager)
        let useCase = CreatePaymentUseCaseImp(repository: repo)
        return AddViewModel(createUseCase: useCase)
    }
}
