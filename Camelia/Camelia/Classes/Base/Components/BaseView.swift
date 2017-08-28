//
//  BaseView.swift
//  Camelia
//
//  Created by James Nguyen on 2017/08/28.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

@IBDesignable

class BaseView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 1.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = .black {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }

    
//    override func draw(_ rect: CGRect) {
//        
//        //// General Declarations
//        let context = UIGraphicsGetCurrentContext()!
//        
//        //// Shadow Declarations
//        let shadow = NSShadow()
//        shadow.shadowColor = UIColor.lightGray.withAlphaComponent(0.7)
//        shadow.shadowOffset = CGSize(width: 3, height: 3)
//        shadow.shadowBlurRadius = 1
//        
//        //// Bezier Drawing
//        let bezierPath = UIBezierPath()
//        bezierPath.move(to: CGPoint(x: 0, y: 0))
//        bezierPath.addLine(to: CGPoint(x: 155.5, y: 0))
//        bezierPath.addLine(to: CGPoint(x: 155.5, y: 13.5))
//        bezierPath.addLine(to: CGPoint(x: 0, y: 47.5))
//        bezierPath.addLine(to: CGPoint(x: 0, y: 0))
//        bezierPath.close()
//        context.saveGState()
//        context.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
//        UIColor.gray.setFill()
//        bezierPath.fill()
//        context.restoreGState()
//    }

}
