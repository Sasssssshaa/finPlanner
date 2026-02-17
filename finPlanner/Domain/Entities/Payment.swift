//
//  Payment.swift
//  finPlanner
//
//  Created by Admin on 16.02.26.
//

import Foundation

struct Payment: Identifiable {
    let id: String
    let type: PayType
    let title: String
    let description: String
    let paymentAmount: Double
    let totalAmount: Double
    //let dueDay: Int
    //let dueDate: Date?
    let isNotificationEnables: Bool
    let createdAt: Date
}
