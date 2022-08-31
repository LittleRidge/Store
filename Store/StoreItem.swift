//
//  StoreItem.swift
//  myProject
//
//  Created by Nikita Rodionov on 28.07.2022.
//  Copyright © 2022 Pedrila. All rights reserved.
//

import Foundation
import UIKit

class Item {
    var name: String
    var price: Double
    var amount: Int
    
        init(name: String, price: Double, amount: Int) {
            self.name = name
            self.price = price
            self.amount = amount
        }
}

class StoreItem: Change {
    
    private var store: [Item] = [
        .init(name: "Apple1", price: 25.0, amount: 0),
        .init(name: "Apple2", price: 25.0, amount: 0),
        .init(name: "Apple3", price: 25.0, amount: 0),
        .init(name: "Apple4", price: 25.0, amount: 0),
        .init(name: "Apple5", price: 25.0, amount: 0),
        .init(name: "Apple6", price: 25.0, amount: 0),
        .init(name: "Apple7", price: 25.0, amount: 0),
        .init(name: "Apple8", price: 25.0, amount: 0),
        .init(name: "Apple9", price: 25.0, amount: 0),
        .init(name: "Apple10", price: 25.0, amount: 0),
        .init(name: "Apple11", price: 25.0, amount: 0),
        .init(name: "Apple12", price: 25.0, amount: 0),
        .init(name: "Apple13", price: 25.0, amount: 0),
        .init(name: "Apple14", price: 25.0, amount: 0),
        .init(name: "Apple15", price: 25.0, amount: 0),
        .init(name: "Apple16", price: 25.0, amount: 0),
        .init(name: "Apple17", price: 25.0, amount: 0),
        .init(name: "Apple18", price: 25.0, amount: 0),
        .init(name: "Apple19", price: 25.0, amount: 0),
        .init(name: "Apple20", price: 25.0, amount: 0),
        .init(name: "Apple21", price: 25.0, amount: 0),
        .init(name: "Apple22", price: 25.0, amount: 0),
        .init(name: "Apple23", price: 25.0, amount: 0),
        .init(name: "Apple24", price: 25.0, amount: 0),
        .init(name: "Apple25", price: 25.0, amount: 0),
        .init(name: "Apple26", price: 25.0, amount: 0),
        .init(name: "Apple27", price: 25.0, amount: 0),
        .init(name: "Apple28", price: 25.0, amount: 0),
        .init(name: "Apple29", price: 25.0, amount: 0),
        .init(name: "Apple30", price: 25.0, amount: 0)
    ]

    func showStore() -> [Item] {
        return store
    }
    
    func count() -> Int {
        return self.store.count
    }
    
    func addItem(item: Item) -> [Item] {
        self.store.append(item)
        return store
    }
    
    func removeItem(item: Item) -> [Item] {
        let store = self.store.filter {$0.name == item.name}
        return store
    }
    
    func changeAmount(name: String, amount: Int) {
        for i in self.store {
            if i.name == name {
                i.amount = amount
            }
        }
    }
    
    func countAmount() -> Double {
        return 33.33
    }
}

protocol Change: AnyObject {
    func changeAmount(name: String, amount: Int)
}



