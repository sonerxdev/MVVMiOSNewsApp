//
//  HomeService.swift
//  MVVMiOSNewsApp
//
//  Created by Soner Karaevli on 22.04.2022.
//

import Foundation

class HomeServices {
    
    
    class func getNews(country: String, completion: @escaping(Swift.Result<NewsResponseModel, ErrorModel>) -> Void) {
        ServiceManager.shared.sendRequest(request: NewsRequestModel(country: country)) { (result) in
            completion(result)
        }
    }
}
