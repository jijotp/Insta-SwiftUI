//
//  Model.swift
//  SampleUI
//
//  Created by Jijo on 27/08/21.
//

import Foundation
import ObjectMapper

class ImageModel: NSObject, Mappable {
    var id: String?
    var author: String?
    var width: Int?
    var height: Int?
    var url: String?
    var download_url: String?
    
    required convenience init(map:Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        self.id <- map["id"]
        self.author <- map["author"]
        self.width <- map["width"]
        self.height <- map["height"]
        self.url <- map["url"]
        self.download_url <- map["download_url"]
    }
}


class Model: NSObject, Mappable {
    var per_page: Int?
    var page: Int?
    var total: Int?
    var total_pages: Int??
    var data: [AvatarModel]?
    
    required convenience init(map:Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        self.per_page <- map["per_page"]
        self.page <- map["page"]
        self.total <- map["total"]
        self.total_pages <- map["total_pages"]
        self.data <- map["data"]
    }
}

class AvatarModel: NSObject, Mappable {
    var id: String?
    var email: String?
    var last_name: String?
    var first_name: String?
    var avatar: String?
    
    required convenience init(map:Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        self.id <- map["id"]
        self.email <- map["email"]
        self.first_name <- map["first_name"]
        self.last_name <- map["last_name"]
        self.avatar <- map["avatar"]
    }
}

struct MenuSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [MenuItem]
}

struct MenuItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
    var photoCredit: String
    var price: Int
    var restrictions: [String]
    var description: String

    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }

    var thumbnailImage: String {
        "\(mainImage)-thumb"
    }

    #if DEBUG
    static let example = MenuItem(id: UUID(), name: "Maple French Toast", photoCredit: "Joseph Gonzalez", price: 6, restrictions: ["G", "V"], description: "Sweet, fluffy, and served piping hot, our French toast is flown in fresh every day from Maple City, Canada, which is where all maple syrup in the world comes from. And if you believe that, we have some land to sell you…")
    #endif
}
class DataResponce: NSObject, Mappable {
    var status : Bool?
    var result : ResultResponce?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        status <- map["status"]
        result <- map["result"]
    }
}

class ResultResponce: NSObject, Mappable {
    var promotions : [PromotionDataModel]?
    var offers : [OfferDataModel]?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        offers <- map["offers"]
        promotions <- map["promotions"]
    }
}

class PromotionDataModel: NSObject, Mappable {
    var id : Int?
    var promotions_name : String?
    var photos_url : String = ""
    var about_promotions : String?
    
    required  convenience init?(map: Map) {
        self.init()
    }
    
    
    func mapping(map: Map) {
        id <- map["id"]
        promotions_name <- map["promotions_name"]
        photos_url <- map["photos_url"]
        about_promotions <- map["about_promotions"]
    }
}

class OfferDataModel: NSObject, Mappable {
    var offers_url : String = ""
    var offer_category : String?
    var id : Int?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    
    func mapping(map: Map) {
        offers_url <- map["offers_url"]
        offer_category <- map["offer_category"]
        id <- map["id"]
    }
}

class Store: NSObject, Mappable {
    var name: String = ""
    var address: String = ""
    var image: String = ""
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    
    func mapping(map: Map) {
        name <- map["offers_url"]
        address <- map["offer_category"]
        image <- map["id"]
    }
}

class ProductModel: NSObject, Mappable {
    var id: Int?
    var name: String?
    var image: String = ""
    var actual_price: String?
    var is_express: Bool?
    var offer_price: String?
    var offer: Int?
    var image_url: String?
    var banner_url: String?
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        image <- map["image"]
        is_express <- map["is_express"]
        actual_price <- map["actual_price"]
        offer <- map["offer"]
        offer_price <- map["offer_price"]
        image_url <- map["image_url"]
        banner_url <- map["banner_url"]
    }
}

class HomeDataModel: NSObject, Mappable {
    var type: String = ""
    var values: [ProductModel]?
  
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    
    func mapping(map: Map) {
        type <- map["type"]
        values <- map["values"]
       
    }
}

class CMSData: NSObject, Mappable {
    var status: Bool?
    var homeData: [HomeDataModel]?
  
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    
    func mapping(map: Map) {
        status <- map["status"]
        homeData <- map["homeData"]
    }
}
