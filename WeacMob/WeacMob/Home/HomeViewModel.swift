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
    
    var homeData = [HomeDataModel]()
    
    var productModel = [ProductModel]()
    
    func getMockdata(handler: @escaping (Bool)->Void) {
        WebserviceRequest.shared.getResoponce(parameter: nil) { (success, responseObject, error)  in
            if success, let object = responseObject as? DataResponce {
                self.offersModel = object.result?.offers ?? []
                self.promotionalModel = object.result?.promotions ?? []
                handler(true)
            } else {
                handler(false)
            }
        }
    }
    
    func getProductdata(handler: @escaping (Bool)->Void) {
        WebserviceRequest.shared.getHomeResoponce(parameter: nil) { (success, responseObject, error)  in
            if success, let object = responseObject as? CMSData {
                if object.status ?? false {
                    self.homeData = object.homeData ?? []
                    let item = self.homeData.filter({ $0.type == "products" }).first?.values ?? []
                    self.productModel = item
                    handler(true)
                } else {
                    handler(false)
                }
            } else {
                handler(false)
            }
        }
    }
}
