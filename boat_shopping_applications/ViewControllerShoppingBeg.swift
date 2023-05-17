//
//  ViewControllerShoppingBeg.swift
//  boat_shopping_applications
//
//  Created by R&W on 14/04/23.
//

import UIKit

class ViewControllerShoppingBeg: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func SearchButtonAction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForsearch") as! ViewControllerForsearch
        navigationController?.pushViewController(navigaet, animated: true)
    }
    
    @IBAction func ContinueShoppingButtonAction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForHouse") as! ViewControllerForHouse
        navigationController?.pushViewController(navigaet, animated: true)
        
    }
    
}
