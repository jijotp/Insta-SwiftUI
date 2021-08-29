//
//  WebserviceManager.swift
//  SampleUI
//
//  Created by Jijo on 27/08/21.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

class WebserviceManager {
    
    static let sharedInstance = WebserviceManager()
    fileprivate var completionHandler: WebServiceCompletionHandler?
    
    // MARK: - Webservice
    // Alamofire Request method
    func request<T: Mappable>(with url: String, method: HTTPMethod, parameter: [String: Any]?, header: HTTPHeaders?, mappableOf: T.Type, completionHandler: @escaping WebServiceCompletionHandler) {
        
        let manager = Alamofire.SessionManager.default

        manager.session.configuration.timeoutIntervalForRequest = 30
        manager.session.configuration.timeoutIntervalForResource = 30
        
        // Alamofire Request
        manager.request(url, method: method, parameters: parameter, encoding: URLEncoding.default, headers: header)
            .validate()
            .responseObject {(response: DataResponse<T>) in
                switch response.result {
                case .success(let successResult): // Success 200
                    if let item = successResult.toJSON() as? NSDictionary {
                        debugPrint(item)
                    }
                   completionHandler(true, successResult as AnyObject, nil)
                case.failure(let error): // Failed
                    let networkError = NSError(domain: "Error", code: error._code, userInfo: nil)
                    completionHandler(false, nil, networkError)
                }
            }
    }
    
    // Alamofire Request method
    func requestArray<T: Mappable>(with url: String, method: HTTPMethod, parameter: [String: Any]?, header: HTTPHeaders?, mappableOf: [T].Type, completionHandler: @escaping WebServiceCompletionHandler) {
        
        let manager = Alamofire.SessionManager.default

        manager.session.configuration.timeoutIntervalForRequest = 30
        manager.session.configuration.timeoutIntervalForResource = 30
        
        // Alamofire Request
        manager.request(url, method: method, parameters: parameter, encoding: URLEncoding.default, headers: header)
            .validate()
            .responseArray {(response: DataResponse<[T]>) in
                switch response.result {
                case .success(let successResult): // Success 200
                    if let item = successResult.toJSON() as? [NSDictionary] {
                        debugPrint(item)
                    }
                   completionHandler(true, successResult as AnyObject, nil)
                case.failure(let error): // Failed
                    let networkError = NSError(domain: "Error", code: error._code, userInfo: nil)
                    completionHandler(false, nil, networkError)
                }
            }
    }
}
