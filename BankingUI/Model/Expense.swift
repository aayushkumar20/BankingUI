//
//  Expense.swift
//  BankingUI
//
//  Created by Aayush kumar on 20/10/23.
//

import SwiftUI

/// Expense Model

struct Expense: Identifiable, Hashable, Equatable {
    var id = UUID().uuidString
    var amountSpent: String
    var product: String
    var productIcon: String
    var spedType: String
}
