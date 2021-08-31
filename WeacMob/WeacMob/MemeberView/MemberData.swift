//
//  MemberData.swift
//  WeacMob
//
//  Created by Jijo on 31/08/21.
//

import Foundation

class StoreDetails: ObservableObject {
    @Published var items = [Store]()
    
    var total: Int {
        return items.count
    }

    func add(item: Store) {
        items.append(item)
    }

    func remove(item: Store) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        }
    }
}
