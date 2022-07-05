//
//  ViewController.swift
//  Demo Alamofire for API
//
//  Created by Mohammad Osama Nasir on 7/1/22.
//

import UIKit

class ViewController: APIManager{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Call API request
        
        callAPIRequest{ response in
            print("Response \(response)")
            
        } error: { error in
        print("Error\(error)")
        
        }
    }
    
 


}

