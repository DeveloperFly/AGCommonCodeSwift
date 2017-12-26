//
//  AGUIViewBorder.swift
//  AGCommonCodeSwift
//
//  Created by Aman Gupta on 26/12/17.
//

import UIKit
@IBDesignable

open class AGUIViewBorder: UIView {
    // MARK: - View border
    @IBInspectable open var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable open var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable open var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable open var makeCircle: Bool = false {
        didSet {
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable open var asPerWidthMakeCircle: CGFloat = 0 {
        didSet {
            layer.cornerRadius = (asPerWidthMakeCircle * UIScreen.main.bounds.size.width) / 2
            layer.masksToBounds = asPerWidthMakeCircle > 0
        }
    }


}
