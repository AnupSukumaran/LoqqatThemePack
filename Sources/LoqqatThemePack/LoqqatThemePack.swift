import UIKit


public extension UIColor {
    
    static var c0: UIColor  {
        return #colorLiteral(red: 0.1461695066, green: 0.2209396172, blue: 0.3243667501, alpha: 1)
    }
    
    static var c1: UIColor  {
        return #colorLiteral(red: 0.05098039216, green: 0.09803921569, blue: 0.1607843137, alpha: 1)
    }
    
    static var c2: UIColor  {
        return #colorLiteral(red: 0.09193439037, green: 0.1371945739, blue: 0.199188292, alpha: 1)
    }
    
    static var c3: UIColor  {
        return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    static var c4: UIColor  {
        return #colorLiteral(red: 0.9333333333, green: 0.9450980392, blue: 0.9764705882, alpha: 1)
    }
    
    static var c5: UIColor  {
        return #colorLiteral(red: 0.6803128123, green: 0.680839479, blue: 0.6803943515, alpha: 1)
    }
    
    static var c6: UIColor  {
        return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    static var c7: UIColor  {
        return #colorLiteral(red: 0.7563851476, green: 0.7497990131, blue: 0.7493005991, alpha: 1)
    }
    
    static var newGray: UIColor  {
        return #colorLiteral(red: 0.2253151818, green: 0.3405706921, blue: 0.5, alpha: 1)
    }
    
    static var offWhite: UIColor {
        return #colorLiteral(red: 0.968627451, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
    }
    
    static var offGray: UIColor {
        return #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
    
    static var subTitle: UIColor {
        return #colorLiteral(red: 0.8630128626, green: 0.9023783325, blue: 0.9941379423, alpha: 1)
    }
    
    static var appColor: UIColor {
        return #colorLiteral(red: 0.9764705882, green: 0.7843137255, blue: 0.07843137255, alpha: 1)
    }
    
    static func setColors(dark: UIColor, light: UIColor) -> UIColor {
        if #available(iOS 13, *) {
            return UIColor.init { (trait) -> UIColor in
                // the color can be from your own color config struct as well.
                return trait.userInterfaceStyle == .dark ? dark : light
            }
        } else { return light }
    }
    
    

}

public extension UIViewController {

    func iconColorSetter(imageView: UIImageView, img: UIImage, color: UIColor) {
        if #available(iOS 13, *) {
            if traitCollection.userInterfaceStyle == .dark {
                imageView.image = img.withRenderingMode(.alwaysTemplate)
                imageView.tintColor = color
            } else {
                imageView.image = img
            }
        } else {
            imageView.image = img
        }
    }
    
}
