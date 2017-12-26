//
//  AGUITextViewClassExtension.swift
//  AGCommonCodeSwift
//
//  Created by Aman Gupta on 26/12/17.
//

import UIKit
@IBDesignable

open class AGUITextViewClassExtension: AGUITextViewCornerRadius {
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        setup()
//        font = FontType.getFont(rawValue: fontTypeInterger, fontSize: fontSize)
    }
    
    open func setup() {
        self.textContainerInset = UIEdgeInsets.init(top: self.borderWidth, left: 0 , bottom: self.borderWidth, right: 0);
        self.textContainer.lineFragmentPadding = self.borderWidth;
    }
    
}
