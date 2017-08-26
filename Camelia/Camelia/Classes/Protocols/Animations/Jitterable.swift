//
//  Jitterable.swift
//  Camelia
//
//  Created by James Nguyen on 2017/08/26.
//  Copyright © 2017 James Nguyen. All rights reserved.
//

import UIKit

protocol Jitterable {
    
}

extension Jitterable where Self: UIView {
    func jitter() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint.init(x: self.center.x - 5.0, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint.init(x: self.center.x + 5.0, y: self.center.y))
        layer.add(animation, forKey: "position")
    }
}
