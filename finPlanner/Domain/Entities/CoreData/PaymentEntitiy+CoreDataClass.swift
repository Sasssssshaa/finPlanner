//
//  PaymentEntitiy+CoreDataClass.swift
//  finPlanner
//
//  Created by Admin on 16.02.26.
//
//

public import Foundation
public import CoreData

public typealias PaymentEntitiyCoreDataClassSet = NSSet

@objc(PaymentEntitiy)
public class PaymentEntitiy: NSManagedObject {

}

public typealias PaymentEntitiyCoreDataPropertiesSet = NSSet

extension PaymentEntitiy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PaymentEntitiy> {
        return NSFetchRequest<PaymentEntitiy>(entityName: "PaymentEntitiy")
    }

    @NSManaged public var id: String
    @NSManaged public var type: Int16
    @NSManaged public var title: String
    @NSManaged public var descriptionText: String
    @NSManaged public var paymentAmount: Double
    @NSManaged public var totalAmount: Double
    @NSManaged public var dueDay: Int16
    @NSManaged public var dueDate: Date?
    @NSManaged public var isNotificationEnables: Bool
    @NSManaged public var createdAt: Date
    @NSManaged public var lastPay: Date?

}

extension PaymentEntitiy : Identifiable {

}

