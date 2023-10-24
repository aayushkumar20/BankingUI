//
//  Card.swift
//  BankingUI
//
//  Created by Aayush kumar on 20/10/23.
//

import SwiftUI

/// Card model

struct Card: Identifiable, Hashable {
    var id: UUID = .init()
    var cardName: String
    var cardColor: Color
    var cardBalance: String
    var isFirstBlankCard: Bool = false
    var expenses: [Expense] = []
}

/// Sample Card

var sampleCards: [Card] = [
    .init(cardName: "", cardColor: .clear, cardBalance: "", isFirstBlankCard: true),
    .init(cardName: "Aayush", cardColor: Color("Card 1"), cardBalance: "₹ 10220", expenses: [
        Expense(amountSpent: "₹ 500", product: "Apple Service", productIcon: "Apple", spedType: "Music and TV"),
        Expense(amountSpent: "₹ 100", product: "Figma", productIcon: "Figma", spedType: "Brain storming"),
        Expense(amountSpent: "₹ 50", product: "Instagram", productIcon: "Instagram", spedType: "Creator")
    ]),
    .init(cardName: "Papa", cardColor: Color("Card 2"), cardBalance: "₹ 200000", expenses: [
        Expense(amountSpent: "₹ 500", product: "Apple Service", productIcon: "Apple", spedType: "iCloud and TV"),
        Expense(amountSpent: "₹ 50", product: "Instagram", productIcon: "Instagram", spedType: "Reels and shopping"),
        Expense(amountSpent: "₹ 350", product: "Netflix", productIcon: "Netflix", spedType: "TV")
    ]),
    .init(cardName: "Mother", cardColor: Color("Card 3"), cardBalance: "₹ 150000", expenses: [
        Expense(amountSpent: "₹ 300", product: "Apple Service", productIcon: "Apple", spedType: "Apple TV"),
        Expense(amountSpent: "₹ 500", product: "Figma", productIcon: "Figma", spedType: "Knit deign"),
        Expense(amountSpent: "₹ 900", product: "Netflix", productIcon: "Netflix", spedType: "Subscription")
    ])
]
