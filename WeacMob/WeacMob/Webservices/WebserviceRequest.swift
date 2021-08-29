//
//  WebserviceRequest.swift
//  SampleUI
//
//  Created by Jijo on 27/08/21.
//

import Foundation
import Alamofire

typealias WebServiceCompletionHandler = (_ status: Bool, _ responseObject: AnyObject?, _ error: NSError?) -> Void

class WebserviceRequest {
    
    static let shared = WebserviceRequest()
    
    func getResoponce(parameter: [String: Any]?, handler: @escaping WebServiceCompletionHandler) {
        
        // URL
        let url = "http://www.mocky.io/v2/5c1a39e53200006a0064b01b"
        WebserviceManager.sharedInstance.request(with: url, method: .get, parameter: nil, header: nil, mappableOf: DataResponce.self, completionHandler: handler)
    }
}
