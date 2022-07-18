//
//  ViewController.swift
//  article
//
//  Created by Ammad on 17/07/2022.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add FBLoginButton at center of view controller
        let loginButton = FBLoginButton()
        loginButton.center = view.center
        view.addSubview(loginButton)
        // Do any additional setup after loading the view.
        
        // Observe access token changes
        // This will trigger after successfully login / logout
        NotificationCenter.default.addObserver(forName: .AccessTokenDidChange, object: nil, queue: OperationQueue.main) { (notification) in
            
            // Print out access token
            print("FB Access Token: \(String(describing: AccessToken.current?.tokenString))")
        }
    }


}

