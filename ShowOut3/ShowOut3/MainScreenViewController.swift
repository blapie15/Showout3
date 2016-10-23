//
//  ViewController.swift
//  ShowOut3
//
//  Created by Barry LaPierre on 8/1/16.
//  Copyright © 2016 Project12. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {

    //MARK: Properties
    let backgroundImgage = UIImage(named: "imgLoginScreenBackground")
    
    @IBOutlet weak var btnGallery: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        super.viewDidLoad()
        
        
        let imgNavbarBackground = UIImage(named: "imgNavbarBackground")!
        
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "imgBackButton")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "imgBackButton")
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        self.navigationController?.navigationBar.setBackgroundImage(imgNavbarBackground, for: .default)
        self.navigationController?.toolbar.setBackgroundImage(UIImage(), forToolbarPosition: .any, barMetrics: .default)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
