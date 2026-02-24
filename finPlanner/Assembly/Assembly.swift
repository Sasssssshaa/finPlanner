//
//  Assembly.swift
//  finPlanner
//
//  Created by Admin on 17.02.26.
//

import Foundation

class Assembly {
    static func createMainViewModel() -> MainViewModel{
        let dateSource = FetchPaymentsManager()
        let repo = FetchPeymentRepositoryImpl(dataSource: dateSource)
        let useCase = FetchPaymentsUseCaseImpl(repository: repo)
        return MainViewModel(fetchUseCase: useCase)
    }
    
    static func createAddViewModel() -> AddViewModel {
        
        let manager = CreatePaymentManager()
        let repo = CreatePaymentRepositoryImp(dataSource: manager)
        let useCase = CreatePaymentUseCaseImp(repository: repo)
        return AddViewModel(createUseCase: useCase)
    }
}
