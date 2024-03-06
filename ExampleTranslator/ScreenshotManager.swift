//
//  ScreenshotManager.swift
//  ExampleTranslator
//
//  Created by Иван Знак on 29/02/2024.
//

import UIKit

class ScreenshotManager {
    static let shared = ScreenshotManager()
    private init() {}
    
//    func screenShotMethod() {
//        //Create the UIImage
//        UIGraphicsBeginImageContext(view.frame.size)
//        view.layer.renderInContext(UIGraphicsGetCurrentContext())
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//        //Save it to the camera roll
//        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
//    }
    
    func doScreenshot() -> UIImage? {
        var image: UIImage?
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 1000, height: 1000))
        image = renderer.image { context in
            // Draw whatever you want to capture as a screenshot inside this closure
            // For example, you can draw views, shapes, etc.
            // For now, let's just clear the context with a white color
            UIColor.white.setFill()
            context.fill(CGRect(x: 0, y: 0, width: 1000, height: 1000))
        }
        return image
    }
}
