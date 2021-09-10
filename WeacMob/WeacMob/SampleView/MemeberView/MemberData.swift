//
//  MemberData.swift
//  WeacMob
//
//  Created by Jijo on 31/08/21.
//

import Foundation

class StoreDetails: ObservableObject {
    @Published var items = [Store]()
    @Published var model = false
}
