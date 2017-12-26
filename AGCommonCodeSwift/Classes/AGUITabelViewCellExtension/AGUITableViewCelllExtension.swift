//
//  AGUITableViewCelllExtension.swift
//  AGCommonCodeSwift
//
//  Created by Aman Gupta on 26/12/17.
//

import UIKit

extension UITableViewCell {
    /**
     This function is olny work when
     cell class name and identifier name is same.
     */
    
    // MARK: - Get Identifier
    static func getCellIdentifier() -> String {
        return String(describing: self)
    }

}
