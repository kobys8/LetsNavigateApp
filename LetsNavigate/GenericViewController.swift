//
//  GenericViewController.swift
//  LetsNavigate
//
//  Copyright (c) 2015 Koby Samuel. All rights reserved.
//

import UIKit

class GenericViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    
    @IBAction func incrementCount(sender: AnyObject) {
        (parentViewController as! CountingNavigationController).pushCount++
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let displayCount=(parentViewController as! CountingNavigationController).pushCount
        countLabel.text=String(displayCount)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
