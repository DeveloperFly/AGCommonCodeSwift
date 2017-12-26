//
//  AGUIButtonSublayer.swift
//  AGCommonCodeSwift
//
//  Created by Aman Gupta on 21/12/17.
//

import UIKit
@IBDesignable

open class AGUIButtonSublayer: AGUIButtonCornerRadius {
    //MARK: - Sublayer variables
    @IBInspectable open var sublayerBorderWidth: CGFloat = 1 {
        didSet {
        }
    }
    
    @IBInspectable open var sublayerBorderColorSelected: UIColor? {
        didSet {
        }
    }
    
    @IBInspectable open var sublayerBorderColorNormal: UIColor? {
        didSet {
        }
    }
    
    @IBInspectable open var leftSublayer: Bool = false {
        didSet {
        }
    }
    
    @IBInspectable open var rightSublayer: Bool = false {
        didSet {
        }
    }
    
    @IBInspectable open var bottomSublayer: Bool = false {
        didSet {
        }
    }
    
    @IBInspectable open var topSublayer: Bool = false {
        didSet {
        }
    }
    
    //MARK: - Deafult override methods
    open override func layoutSubviews() {
        super.layoutSubviews()
        if leftSublayer {
            setLeftBorderWithCALayer()
        }
        if rightSublayer {
            setRightBorderWithCALayer()
        }
        if bottomSublayer {
            setBottomBorderWithCALayer()
        }
        if topSublayer {
            setTopBorderWithCALayer()
        }
        if makeCircle {
            layer.cornerRadius = self.bounds.size.width / 2
            clipsToBounds = true
        }
//        titleLabel?.font = FontType.getFont(rawValue: fontTypeInterger, fontSize: fontSize)
    }
    
    // MARK: - Set variables methods
    open func setLeftBorderWithCALayer() {
        let border = CALayer()
        border.backgroundColor = self.isSelected ? sublayerBorderColorSelected?.cgColor : sublayerBorderColorNormal?.cgColor
        border.frame = CGRect(x: 0, y: 0, width: sublayerBorderWidth, height: self.frame.size.height)
        self.layer.addSublayer(border)
    }
    
    open func setRightBorderWithCALayer() {
        let border = CALayer()
        border.backgroundColor = self.isSelected ? sublayerBorderColorSelected?.cgColor : sublayerBorderColorNormal?.cgColor
        border.frame = CGRect(x: self.frame.size.width - sublayerBorderWidth, y: 0, width: sublayerBorderWidth, height: self.frame.size.height)
        self.layer.addSublayer(border)
    }
    
    open func setTopBorderWithCALayer() {
        let border = CALayer()
        border.backgroundColor = self.isSelected ? sublayerBorderColorSelected?.cgColor : sublayerBorderColorNormal?.cgColor
        border.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: sublayerBorderWidth)
        self.layer.addSublayer(border)
    }
    
    open func setBottomBorderWithCALayer() {
        let border = CALayer()
        border.backgroundColor = self.isSelected ? sublayerBorderColorSelected?.cgColor : sublayerBorderColorNormal?.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - sublayerBorderWidth, width: self.frame.size.width, height: sublayerBorderWidth)
        self.layer.addSublayer(border)
    }

}
