//
//  MyTabBarController.swift
//  MyLocations
//
//  Created by Ali on 2/18/18.
//  Copyright © 2018 mag. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override var childViewControllerForStatusBarStyle: UIViewController? {
        return nil
    }
}
