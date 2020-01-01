//
//  File.swift
//  
//
//  Created by Manu Puthoor on 01/01/20.
//

import UIKit
import SASLogger

public struct Gradient {
    
    //------------------------------***Gradient Layer Functions***----------------------------------------//
    //MARK: Creating Gradient Layer on top of UIView
   public static func createGradientLayer(_ main: UIView,loc1: NSNumber, loc2: NSNumber,startPnt: CGPoint, endPnt: CGPoint, colors: (UIColor, UIColor) ) {
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = CGRect(x: CGFloat(0), y: CGFloat(0), width: main.bounds.size.width, height: main.bounds.size.height)
        gradient.colors = [colors.0.cgColor, colors.1.cgColor]
        gradient.locations = [loc1, loc2]
        gradient.startPoint = startPnt
        gradient.endPoint = endPnt
        gradient.zPosition = -1
        gradient.name = "layer1"
        main.layer.addSublayer(gradient)
        main.clipsToBounds = true
        
    }
    
    public static func deleteDrawing(_ main: UIView) {
        guard let createdLayers = main.layer.sublayers else {Logger.pnt("createdLayers😓");return}
        for layer in createdLayers {
            if(layer.name == "layer1"){
                layer.removeFromSuperlayer()
            }
        }
    }
}
