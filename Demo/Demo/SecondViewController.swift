//
//  SecondViewController.swift
//  Demo
//
//  Created by qky on 15/10/14.
//  Copyright © 2015年 PHAM BA THO. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var menuView: BTNavigationDropdownMenu!
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        menuView.hideMenuFromOutside()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let items = ["Most Popular", "Latest", "Trending", "Nearest", "Top Picks"]
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.0/255.0, green:180/255.0, blue:220/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.redColor()]
        
        menuView = BTNavigationDropdownMenu(title: "Nearest", items: items, vc: self)
        menuView.menuTitleColor = UIColor.blackColor()
        menuView.cellHeight = 50
        //menuView.cellBackgroundColor = self.navigationController?.navigationBar.barTintColor
        //menuView.cellSelectionColor = UIColor(red: 0.0/255.0, green:160.0/255.0, blue:195.0/255.0, alpha: 1.0)
        //menuView.cellTextLabelColor = UIColor.whiteColor()
        //menuView.cellTextLabelFont = UIFont(name: "Avenir-Heavy", size: 17)
        menuView.arrowPadding = 15
        menuView.animationDuration = 0.5
        menuView.maskBackgroundColor = UIColor.blackColor()
        menuView.maskBackgroundOpacity = 0.3
        menuView.didSelectItemAtIndexHandler = {(indexPath: Int) -> () in
            print("Did select item at index: \(indexPath)")
        }
        
        self.navigationItem.titleView = menuView
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
