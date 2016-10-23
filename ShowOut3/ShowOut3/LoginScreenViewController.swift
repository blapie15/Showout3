//
//  LoginScreenViewController.swift
//  ShowOut3
//
//  Created by Barry LaPierre on 8/6/16.
//  Copyright © 2016 Project12. All rights reserved.
//

import UIKit

class LoginScreenViewController: UIViewController {
    
    //MARK: Properties
    
    let backgroundImgage = UIImage(named: "imgLoginScreenBackground")
    
    @IBOutlet weak var tfUsername: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    
    //MARK: Overrides
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addBackgroundImage(backgroundImage: backgroundImgage!)
        self.navigationController?.toolbar.setBackgroundImage(UIImage(),forToolbarPosition: .any , barMetrics: .default)
        
    }
    
    override func didReceiveMemoryWarning() {
        
    }
    
    //MARK: Events
    
    @IBAction func invokeLogin(sender: AnyObject) {
    let username = tfUsername.text
    let password = tfPassword.text
    let userCredential = UserCredentials(username: username!, password: password!)
     
    userCredential.printInformation()
    }
 
}

//MARK: Extenstions
extension UIView {
    func addBackgroundImage(backgroundImage: UIImage) {

        let Twidth = UIScreen.main.bounds.size.width    //.mainScreen().bounds.size.width
        let Theight = UIScreen.main.bounds.size.height //.mainScreen().bounds.size.height
        
        let imageViewBackground = UIImageView(frame: CGRect(x: 0, y: 0, width: Twidth, height: Theight))
        imageViewBackground.image = backgroundImage
        imageViewBackground.contentMode = .scaleAspectFill //.ScaleAspectFill
        
        self.addSubview(imageViewBackground)
        self.sendSubview(toBack: imageViewBackground)   //ToBack(imageViewBackground)
    }
}

extension UIButton {
    func setButtonImage(backgroundImage: UIImage){
        
    }
}
