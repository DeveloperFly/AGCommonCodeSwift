//
//  AGUIImageViewRadius.swift
//  AGCommonCodeSwift
//
//  Created by Aman Gupta on 21/12/17.
//

import UIKit
@IBDesignable

open class AGUIImageViewRadius: AGUIImageViewBorder {
    // MARK: - Corner radius
    @IBInspectable open var viewCornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = viewCornerRadius
            layer.masksToBounds = viewCornerRadius > 0
        }
    }
    
    // MARK: - As per screen width make cirle image
    @IBInspectable open var asPerWidthMakeCircle: CGFloat = 0 {
        didSet {
            layer.cornerRadius = (asPerWidthMakeCircle * UIScreen.main.bounds.size.width) / 2
            layer.masksToBounds = asPerWidthMakeCircle > 0
        }
    }
    
    // MARK: - Make cirle image
    @IBInspectable open var makeCircle: Bool = false {
        didSet {
            layer.masksToBounds = viewCornerRadius > 0
        }
    }
    
    // MARK: - Deafult override methods
    open override func layoutSubviews() {
        if makeCircle {
            layer.cornerRadius = self.bounds.size.width / 2
            clipsToBounds = true
        }
    }

}
