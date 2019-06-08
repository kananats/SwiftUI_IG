//
//  UIImageExtension.swift
//  SwiftUI_IG
//
//  Created by Kananat Suwanviwatana on 2019/06/08.
//  Copyright © 2019 Kananat Suwanviwatana. All rights reserved.
//

import UIKit

extension UIImage {
    func crop(rect: CGRect) -> UIImage {
        var rect = rect
        rect.origin.x *= scale
        rect.origin.y *= scale
        rect.size.width *= scale
        rect.size.height *= scale
        
        let imageRef = cgImage!.cropping(to: rect)
        let image = UIImage(cgImage: imageRef!, scale: self.scale, orientation: imageOrientation)
        return image
    }
    
    func cropToSquare() -> UIImage {
        let width = CGFloat(cgImage!.width)
        let height = CGFloat(cgImage!.height)
        let size = min(width, height)
        
        let x = (width - size) / 2.0
        let y = (height - size) / 2.0
        
        let rect = CGRect(x: x, y: y, width: size, height: size)
        let croppedImage = cgImage!.cropping(to: rect)!
        return UIImage(cgImage: croppedImage, scale: 0.0, orientation: imageOrientation)
    }
}
