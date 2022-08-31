//
//  StoreItem.swift
//  myProject
//
//  Created by Nikita Rodionov on 28.07.2022.
//  Copyright © 2022 Pedrila. All rights reserved.
//

import Foundation
import UIKit



class BasketItem: StoreItem {
    
    private var basket: [Item] = [
        .init(name: "Banana1", price: 25.0, amount: 1),
        .init(name: "Banana2", price: 25.0, amount: 2),
        .init(name: "Banana3", price: 25.0, amount: 3),
        .init(name: "Banana4", price: 25.0, amount: 0),
        .init(name: "Banana5", price: 25.0, amount: 0),
        .init(name: "Banana6", price: 25.0, amount: 0),
        .init(name: "Banana7", price: 25.0, amount: 0),
        .init(name: "Banana8", price: 25.0, amount: 0),
        .init(name: "Banana9", price: 25.0, amount: 0),
        .init(name: "Banana10", price: 25.0, amount: 0),
        .init(name: "Banana11", price: 25.0, amount: 0),
        .init(name: "Banana12", price: 25.0, amount: 0),
        .init(name: "Banana13", price: 25.0, amount: 0),
        .init(name: "Banana14", price: 25.0, amount: 0),
        .init(name: "Banana15", price: 25.0, amount: 0),
        .init(name: "Banana16", price: 25.0, amount: 0),
        .init(name: "Banana17", price: 25.0, amount: 0),
        .init(name: "Banana18", price: 25.0, amount: 0),
        .init(name: "Banana19", price: 25.0, amount: 0),
        .init(name: "Banana20", price: 25.0, amount: 0),
        .init(name: "Banana21", price: 25.0, amount: 0),
        .init(name: "Banana22", price: 25.0, amount: 0),
        .init(name: "Banana23", price: 25.0, amount: 0),
        .init(name: "Banana24", price: 25.0, amount: 0),
        .init(name: "Banana25", price: 25.0, amount: 0),
        .init(name: "Banana26", price: 25.0, amount: 0),
        .init(name: "Banana27", price: 25.0, amount: 0),
        .init(name: "Banana28", price: 25.0, amount: 0),
        .init(name: "Banana29", price: 25.0, amount: 0),
        .init(name: "Banana30", price: 25.0, amount: 0)
    ]

    override func showStore() -> [Item] {
        return basket
    }
    
    override func count() -> Int {
        return self.basket.count
    }
    
    override func addItem(item: Item) -> [Item] {
        self.basket.append(item)
        return basket
    }
    
    override func removeItem(item: Item) -> [Item] {
        let store = self.basket.filter {$0.name == item.name}
        return store
    }
    
    override func changeAmount(name: String, amount: Int) {
        for i in self.basket {
            if i.name == name {
                i.amount = amount
            }
        }
    }
    
    override func countAmount() -> Double {
        var totalAmount: Double = 0
        for i in self.basket {
            totalAmount += Double(i.amount) * i.price
        }
        
        return totalAmount
    }
}



