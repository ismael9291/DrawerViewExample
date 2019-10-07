//
//  ViewController.swift
//  DrawerSampleProject
//
//  Created by Ismael Zavala on 10/7/19.
//  Copyright © 2019 Ismael Zavala. All rights reserved.
//

import UIKit
import DrawerView

class ViewController: UIViewController {

    private var drawerView: DrawerView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        addDrawer()
    }

    func addDrawer() {
        // Initializing the view controller for the drawer.
        let controller = DrawerViewController()
        let bundle = Bundle(for: type(of: controller))
        bundle.loadNibNamed("DrawerViewController", owner: controller, options: nil)
        


            // Adding field data to the drawer.
        controller.name.text = "first last"
        controller.info.text = "test info"

        self.drawerView = self.addDrawerView(withViewController: controller)

        // Need to set it to open and then desired position to have the correct placement of views inside of the drawer.
        drawerView?.position = .open
        drawerView?.snapPositions = [.collapsed, .open, .closed]
        drawerView?.insetAdjustmentBehavior = .automatic
        drawerView?.backgroundEffect = UIBlurEffect(style: .extraLight)
        drawerView?.cornerRadius = 0
        drawerView?.collapsedHeight = 80
        drawerView?.position = .collapsed
        drawerView?.backgroundColor = .white
    }
}
