//
//  AGUIButtonCornerRadius.swift
//  AGCommonCodeSwift
//
//  Created by Aman Gupta on 21/12/17.
//

import UIKit
@IBDesignable

open class AGUIButtonCornerRadius: AGUIButtonBorder {
    // MARK: - Corner radius
    @IBInspectable open var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    //MARK : - Button make circle
    @IBInspectable open var makeCircle: Bool = false {
        didSet {
            layer.masksToBounds = cornerRadius > 0
        }
    }

}
