//
//  Items.swift
//  TodoAppVlog
//
//  Created by Marina Beatriz Santana de Aguiar on 31.07.20.
//  Copyright © 2020 Marina Beatriz Santana de Aguiar. All rights reserved.
//

import Foundation

// Model
struct Items<Element> {
    private var allItems = [Item<Element>]()
    
    func getAllItems() -> [Item<Element>] { allItems }
    
    mutating func appendToItems(withContent content: Element) {
        allItems.append(Item(rawValue: content))
    }
    
    mutating func deleteItem(index: IndexSet) {
        if let first = index.first {
            allItems.remove(at: first)
        }
    }
    
    struct Item<Element>: Identifiable {
        let id = UUID()
        let rawValue: Element
    }
}
