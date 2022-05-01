//
//  String + .swift
//  MVVMiOSNewsApp
//
//  Created by Soner Karaevli on 22.04.2022.
//

import Foundation

extension String {
    
    func localized() -> String {
        return NSLocalizedString(self, comment: self)
    }
}

