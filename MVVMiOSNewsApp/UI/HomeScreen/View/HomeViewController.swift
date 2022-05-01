//
//  HomeViewController.swift
//  MVVMiOSNewsApp
//
//  Created by Soner Karaevli on 22.04.2022.
//

import UIKit

final class HomeViewController: UIViewController {
     let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = "DENEMEasdasdlasdlamsldşm"
        self.label.textColor = UIColor.white
        
        
        view.addSubview(label)
        view.backgroundColor = UIColor.blue
        
        
        HomeServices.getNews(country: "tr&apiKey=25fe9ccb8b4141c9aa9f5dab6c989f6a") { result in
            switch result {
            case Result.success(let response):
                // Handle successfull response
                print(response)
                break
            case Result.failure(let error):
                // Handle error
                print(error.message)
                break
            }
        }

        // Do any additional setup after loading the view.
    }
    
    func configure() {
        
    }

   

}
