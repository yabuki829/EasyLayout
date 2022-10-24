import Foundation
import UIKit

extension UIView{
    public func layout(top: NSLayoutYAxisAnchor? = nil,paddingTop: CGFloat = 0,
                left: NSLayoutXAxisAnchor? = nil, paddingLeft: CGFloat = 0,
                right: NSLayoutXAxisAnchor? = nil,paddingRight: CGFloat = 0,
                bottom: NSLayoutYAxisAnchor? = nil,paddingBottom: CGFloat = 0) {
    
        self.translatesAutoresizingMaskIntoConstraints = false

        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }

        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }

        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }

        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }

       
    }
    public func addSize(width: CGFloat? = nil,height: CGFloat? = nil){
        self.translatesAutoresizingMaskIntoConstraints = false
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }

        if let height = height{
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    public func center(inView view: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    public func centerX(inView view: UIView, topAnchor: NSLayoutYAxisAnchor? = nil, paddingTop: CGFloat? = nil) {
        self.translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        if let topAnchor = topAnchor, let padding = paddingTop  {
            self.topAnchor.constraint(equalTo: topAnchor, constant: padding).isActive = true
        }
    }

    public func centerY(inView view: UIView, leftAnchor: NSLayoutXAxisAnchor? = nil, paddingleft: CGFloat? = nil, constant: CGFloat? = 0) {
        centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant!).isActive = true

        if let leftAnchor = leftAnchor, let padding = paddingleft {
            self.leftAnchor.constraint(equalTo: leftAnchor, constant: padding).isActive = true
        }
    }
    
    public func removeConstraint(){
        removeConstraints(constraints)
    }
}




