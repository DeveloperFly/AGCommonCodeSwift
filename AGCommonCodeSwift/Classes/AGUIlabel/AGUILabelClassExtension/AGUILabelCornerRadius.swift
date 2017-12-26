//
//  AGUILabelCornerRadius.swift
//  AGCommonCodeSwift
//
//  Created by Aman Gupta on 21/12/17.
//

import UIKit
@IBDesignable

open class AGUILabelCornerRadius: AGUILabelBorder {
    // MARK: - Corner radius
    @IBInspectable open var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }

}
