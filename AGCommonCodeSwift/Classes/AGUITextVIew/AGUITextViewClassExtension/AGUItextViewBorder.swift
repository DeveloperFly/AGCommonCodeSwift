//
//  AGUItextViewBorder.swift
//  AGCommonCodeSwift
//
//  Created by Aman Gupta on 26/12/17.
//

import UIKit

open class AGUItextViewBorder: AGUITextViewCustomFont {
    // MARK: - TextView border
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
