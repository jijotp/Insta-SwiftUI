//
//  StoreViewModel.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import Foundation

class StoreViewModel {
    var stores = [Store]()
    
    func setUpdata() {
        let model = Store()
        model.image = "App Icon-1"
        model.name = "Adidas"
        model.address = "Ground floor"
        
        let model1 = Store()
        model1.image = "NYKA"
        model1.name = "Nykka"
        model1.address = "2nd floor"
        
        let model2 = Store()
        model2.image = "Mask"
        model2.name = "Joy alukkas diamonds"
        model2.address = "Ground floor"
        
        let model3 = Store()
        model3.image = "Mask Group 26"
        model3.name = "PVR cinemas"
        model3.address = "2nd floor"
        self.stores = [model, model1, model2, model3] + [model, model1, model2, model3]
    }
}
