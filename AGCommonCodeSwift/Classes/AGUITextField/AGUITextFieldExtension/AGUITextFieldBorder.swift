//
//  AGUITextFieldBorder.swift
//  AGCommonCodeSwift
//
//  Created by Aman Gupta on 21/12/17.
//

import UIKit
@IBDesignable

open class AGUITextFieldBorder: AGUITextFieldPadding {
    // MARK: - TextField Border width and color
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

}
