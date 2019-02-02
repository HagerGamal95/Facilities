//
//  NetworkService.swift
//  Facilities
//
//  Created by hager on 2/1/19.
//  Copyright © 2019 Vodafone. All rights reserved.
//

import Foundation
import Alamofire

typealias JSON = [String : Any]

class NetworkService {
    
    static let kBaseURL = "https://dhcr.gov.ae/MobileWebAPI/api/Common/"
    
    static let shared = NetworkService()
    
    private init() {}
    
    func getServices(pageSize : Int , pageIndex : Int , departmentNumber : Int , completion : @escaping (Response? , Error? )->Void)
    {
        let url = String(format: "%@%@", NetworkService.kBaseURL, "ServiceCatalogue/GetDepartmentServices")
        
        //        let headers = ["Content-Type" : "application/json","Accept" : "application/json", "Authorization" : bear]
        
        let parameters : [String : String] = ["PageSize": String(pageSize) ,
                                              "PageIndex" : String(pageIndex) ,
                                              "DepartmentID" : String(departmentNumber)]
        let generalError = NSError()
        Alamofire.request(url, method: .post, parameters: parameters , encoding: URLEncoding.httpBody, headers: nil).responseJSON { (response) in
            response.result.ifFailure {
                completion(nil , generalError)
            }
            response.result.ifSuccess {
                if let responseData = response.data {
                    do {
                        let decoder = JSONDecoder()
                        let response = try decoder.decode(Response.self, from: responseData)
                        completion(response , nil)
                    } catch{
                        let error = NSError()
                        completion(nil , error)
                    }
                } else {
                    let error = NSError()
                    completion(nil , error)
                }
            }
        }
    }
}


