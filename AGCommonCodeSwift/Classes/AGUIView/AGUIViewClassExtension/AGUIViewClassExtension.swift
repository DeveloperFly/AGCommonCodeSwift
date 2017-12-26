//
//  AGUIViewClassExtension.swift
//  AGCommonCodeSwift
//
//  Created by Aman Gupta on 26/12/17.
//

import UIKit
@IBDesignable

open class AGUIViewClassExtension: AGUIViewBorder {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override open func layoutSubviews() {
        super.layoutSubviews()
        if makeCircle {
            layer.cornerRadius = self.bounds.size.width / 2
            clipsToBounds = true
        }
    }

}
