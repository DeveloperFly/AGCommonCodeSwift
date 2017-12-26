//
//  AGUIButtonShadowBorder.swift
//  AGCommonCodeSwift
//
//  Created by Aman Gupta on 21/12/17.
//

import UIKit
@IBDesignable

open class AGUIButtonShadowBorder: AGUIButtonCustomFont {
    // MARK: - Shadow radius variables
    @IBInspectable open var shadowRadius: CGFloat = 0 {
        didSet {
            layer.shadowOffset = CGSize.init(width: 0.1, height: 0.1)
            layer.shadowRadius = shadowRadius
            layer.shadowOpacity = 1.0
        }
    }
    
    @IBInspectable open  var masksToBounds: Bool = false {
        didSet {
            layer.masksToBounds = masksToBounds
        }
    }
    
    @IBInspectable open  var shodowColor: UIColor? {
        didSet {
            layer.shadowColor = shodowColor?.cgColor
        }
    }

}
