//
//  NewsRequestModel.swift
//  MVVMiOSNewsApp
//
//  Created by Soner Karaevli on 23.04.2022.
//

import Foundation

class NewsRequestModel: RequestModel {
    
    // MARK: - Properties
    private var country: String
    
    init(country: String) {
        self.country = country
    }
    
//    override var path: String {
//        return Constant.ServiceConstant.avgPrice
//    }
    
    override var method: RequestHTTPMethod {
        return RequestHTTPMethod.get
    }
    override var parameters: [String : Any?] {
        return [
            "country": country
        ]
    }
}
