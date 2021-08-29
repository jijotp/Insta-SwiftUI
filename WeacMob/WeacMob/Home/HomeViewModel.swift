//
//  HomeViewModel.swift
//  WeacMob
//
//  Created by Jijo on 29/08/21.
//

import Foundation

class HomeViewModel {
    
    var offersModel = [OfferDataModel]()
    var promotionalModel = [PromotionDataModel]()
    
    
    func getMockdata(handler: @escaping (Bool)->Void) {
        WebserviceRequest.shared.getResoponce(parameter: nil) { (success, responseObject, error)  in
            if success, let object = responseObject as? DataResponce {
                self.offersModel = (object.result?.offers ?? []) + (object.result?.offers ?? [])
                self.promotionalModel = object.result?.promotions ?? []
                handler(true)
            } else {
                handler(false)
            }
        }
    }
}
