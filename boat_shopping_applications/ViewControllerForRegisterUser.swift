//
//  ViewControllerForRegisterUser.swift
//  boat_shopping_applications
//
//  Created by R&W on 10/05/23.
//

import UIKit

class ViewControllerForRegisterUser: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForLoginHome3") as! ViewControllerForLoginHome3
        navigationController?.popViewController(animated: true)
    }
    
    

}
