//
//  File.swift
//  
//
//  Created by Manu Puthoor on 01/01/20.
//

import UIKit

public struct ColorSeq {
    
   public static func menuColors() ->  (bg: UIColor, txtClr: UIColor, codeClr: UIColor, selecBGL: UIColor) {
           
        return (UIColor.setColors(dark: .newGray, light: .c3) , UIColor.setColors(dark: .c3, light: .c5), UIColor.setColors(dark: .c7, light: .c7), UIColor.setColors(dark: .c0, light: .c4))
    }
}
