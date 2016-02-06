//
//  DisplayController.swift
//  EatOrNot
//
//  Created by Xinxing Jiang on 2/5/16.
//  Copyright © 2016 e. All rights reserved.
//

import UIKit

class DisplayController: UIViewController {

    var dv: DisplayView!
    
    // MARK: - VC life cycle
    
    override func loadView() {
        super.loadView()
        dv = DisplayView(parentView: self.view)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        hideNavigationBar = true
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
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
