//
//  NavigationControllerExtension'.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 26/11/22.
//

import Foundation
import UIKit
extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
