//
//  UIButtonCustom.swift
//  BankApp
//
//  Created by Ulisses Gomes on 02/04/20.
//  Copyright © 2020 Ulisses Gomes. All rights reserved.
//

import Foundation
import UIKit

fileprivate let minimumHitArea = CGSize(width: 20, height: 20)
private var xoAssociationKey: UInt8 = 0

@IBDesignable class UIButtonCustom: UIButton {
    
    
    @IBInspectable var cornerRadius: CGFloat = 26{
        didSet{
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet{
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var shadowColor: UIColor = UIColor.darkGray {
        didSet {
            layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 5 {
        didSet {
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat = 8 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable var masksToBounds: Bool = false {
        didSet {
            layer.masksToBounds = masksToBounds
        }
    }
    
    @IBInspectable var shadowOffset: CGSize = CGSize(width: 0, height: 5) {
        didSet {
            layer.shadowOffset = shadowOffset
        }
    }
    
    
    
}

