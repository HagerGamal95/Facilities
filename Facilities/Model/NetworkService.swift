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
    
    static let shared = NetworkService()
    
    private init() {}
    
    func getServices(pageSize : Int , pageIndex : Int , departmentNumber : Int , completion : @escaping (Response? , Error? )->Void)
    {
        let dict : [String : String] = ["PageSize": String(pageSize) ,
                                        "PageIndex" : String(pageIndex) ,
                                        "DepartmentID" : String(departmentNumber)]
        
        //        let headers = ["Content-Type" : "application/json","Accept" : "application/json", "Authorization" : bear]
        
        Alamofire.request("https://dhcr.gov.ae/MobileWebAPI/api/Common/ServiceCatalogue/GetDepartmentServices", method: .post, parameters: dict , encoding: URLEncoding.httpBody, headers: nil).responseJSON { (response) in
            response.result.ifSuccess {
                if let responseData = response.data {
                    do{
                        let decoder = JSONDecoder()
                        let response = try decoder.decode(Response.self, from: responseData)
                        completion(response , nil)
                    } catch{
                        let error = NSError()
                        completion(nil , error)
                    }
                }
            }
            
            
        }
    }
}


