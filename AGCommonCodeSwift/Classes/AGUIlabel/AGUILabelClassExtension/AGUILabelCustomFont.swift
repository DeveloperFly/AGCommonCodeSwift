//
//  AGUILabelCustomFont.swift
//  AGCommonCodeSwift
//
//  Created by Aman Gupta on 21/12/17.
//

import UIKit
@IBDesignable

open class AGUILabelCustomFont: UILabel {
    @IBInspectable open var fontSize: CGFloat = 18 {
        didSet {
        }
    }
    
    @IBInspectable open var fontTypeInterger: Int = 0 {
        didSet {
        }
    }
    
    open override func layoutSubviews() {
//        font = FontType.getFont(rawValue: fontTypeInterger, fontSize: fontSize)
    }

}
