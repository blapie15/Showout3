//
//  RecordScreenViewController.swift
//  ShowOut3
//
//  Created by Barry LaPierre on 8/7/16.
//  Copyright © 2016 Project12. All rights reserved.
//

import UIKit
import MobileCoreServices

class RecordScreenViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title="Record Screen"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func RecordButton(_ sender: AnyObject) {
        print("trying...")
        startCameraFromViewController(viewController: self, withDelegate: self)
    }
    
    func startCameraFromViewController(viewController: UIViewController, withDelegate delegate: UIImagePickerControllerDelegate & UINavigationControllerDelegate) -> Bool {
        if UIImagePickerController.isSourceTypeAvailable(.camera) == false {
            return false
        }
        
        let cameraController = UIImagePickerController()
        cameraController.sourceType = .camera
        cameraController.mediaTypes = [kUTTypeMovie as NSString as String]
        cameraController.allowsEditing = false
        cameraController.delegate = delegate
        
        present(cameraController, animated: true, completion: nil)
        return true
    }

    
    override func viewDidLayoutSubviews() {
        //configureRecordButton()
    }
    
    /**
    func configureRecordButton()
    {
        RecordButton.layer.cornerRadius = 0.5 * RecordButton.bounds.size.width
        RecordButton.layer.borderWidth = 2.0
        RecordButton.clipsToBounds = true
    }**/
}

//MARK: Extenstions
extension RecordScreenViewController: UIImagePickerControllerDelegate {
}

extension RecordScreenViewController: UINavigationControllerDelegate {
}
