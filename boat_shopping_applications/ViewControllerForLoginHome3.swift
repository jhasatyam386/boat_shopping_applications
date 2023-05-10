//
//  ViewControllerForLoginHome3.swift
//  boat_shopping_applications
//
//  Created by R&W on 09/05/23.
//

import UIKit

class ViewControllerForLoginHome3: UIViewController {

    @IBOutlet weak var RegisterButtonAction: UIButton!
    @IBOutlet weak var loginForLoginRegister: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        loginForLoginRegister.layer.cornerRadius = 9
        loginForLoginRegister.layer.borderWidth = 3
       // loginForLoginRegister.layer.borderColor = UIColor.red.cgColor
        loginForLoginRegister.layer.masksToBounds = true
        
        RegisterButtonAction.layer.cornerRadius = 9
        RegisterButtonAction.layer.borderWidth = 3
        RegisterButtonAction.layer.borderColor = UIColor.red.cgColor
        RegisterButtonAction.layer.masksToBounds = true
    }
    
    @IBAction func BackButtonAction(_ sender: Any) {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewControllerUser") as! ViewControllerUser
        navigationController?.popViewController(animated: true)
    }
    @IBAction func registerButtonAction(_ sender: Any) {
        
        let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForRegisterUser") as! ViewControllerForRegisterUser
        navigationController?.pushViewController(naviget, animated: true)
        
      
    }
    
    

}
