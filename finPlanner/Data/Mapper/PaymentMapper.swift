//
//  PaymentMapper.swift
//  finPlanner
//
//  Created by Admin on 16.02.26.
//

import Foundation
import CoreData

struct PaymentMapper {
    
    static func toDomain(from entitie: PaymentEntitiy) -> Payment {
        var payment = Payment(id: entitie.id ?? "",
                              type: PayType(rawValue: Int(entitie.type)) ?? .mounthly,
                              title: entitie.title ?? "",
                              description: entitie.descriptionText ?? "",
                              paymentAmount: entitie.paymentAmount,
                              totalAmount: entitie.totalAmount,
                              isNotificationEnables: entitie.isNotificationEnables,
                              createdAt: entitie.createdAt ?? .now)
        
        return payment
    }
    
    static func toEntitie(from: Payment, context: NSManagedObjectContext) -> PaymentEntitiy {
        let entitie = PaymentEntitiy(context: context)
        entitie.id = from.id
        entitie.title = from.title
        entitie.type = Int16(from.type.rawValue)
        entitie.descriptionText = from.description
        entitie.paymentAmount = from.paymentAmount
        entitie.totalAmount = from.totalAmount
        entitie.isNotificationEnables = from.isNotificationEnables
        entitie.createdAt = from.createdAt
        
        return entitie
    }
    
}
