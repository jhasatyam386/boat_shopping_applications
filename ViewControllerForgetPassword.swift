//
//  ViewControllerForgetPassword.swift
//  boat_shopping_applications
//
//  Created by R&W on 01/01/18.
//

import UIKit

class ViewControllerForgetPassword: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func BackButtonAction(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForLoginHome3") as! ViewControllerForLoginHome3
        navigationController?.popViewController(animated: true)
        
    }
    
   

}
