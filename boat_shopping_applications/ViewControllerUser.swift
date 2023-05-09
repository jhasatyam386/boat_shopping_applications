//
//  ViewControllerUser.swift
//  boat_shopping_applications
//
//  Created by R&W on 14/04/23.
//

import UIKit

class ViewControllerUser: UIViewController {

    @IBOutlet weak var LoginButtonForDetails: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginButtonForDetails.layer.cornerRadius = 9
        LoginButtonForDetails.layer.borderWidth = 3
        LoginButtonForDetails.layer.borderColor = UIColor.red.cgColor
        LoginButtonForDetails.layer.masksToBounds = true
    }
    
    @IBAction func searchHome3ButtonAction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForsearch") as! ViewControllerForsearch
        navigationController?.pushViewController(navigaet, animated: true)
        
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
        
    }
    
}
