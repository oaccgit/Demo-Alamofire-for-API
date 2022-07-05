//
//  APIManager.swift
//  Demo Alamofire for API
//
//  Created by Mohammad Osama Nasir on 7/2/22.
//

import UIKit
import Alamofire
import SwiftyJSON

 typealias SuccessBlock = (JSON) -> Void
 typealias ErrorBlock = (Error) -> Void

class APIManager: UIViewController {
    
    //MARK:- variables
    var successResponse:SuccessBlock!
    var errorResponse:ErrorBlock!
    var urlString = "https://jsonplaceholder.typicode.com/todos"
    
    //MARK:- init
   
    override func viewDidLoad() {
    }
    
    func callAPIRequest(success: @escaping SuccessBlock, error:@escaping ErrorBlock)  {
        AF.request(urlString, method: .get).responseJSON { response in
            print(response)
        }
    }
}

