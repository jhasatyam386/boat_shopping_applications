//
//  ViewControllerFor4.swift
//  boat_shopping_applications
//
//  Created by R&W on 22/05/23.
//

import UIKit

class ViewControllerFor4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func backButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForHouse") as! ViewControllerForHouse
        navigationController?.popViewController(animated: true)
    }
    @IBAction func searchButtonaction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForsearch") as! ViewControllerForsearch
        navigationController?.pushViewController(navigaet, animated: true)
    }
    
    @IBAction func begButtonaction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerShoppingBeg") as! ViewControllerShoppingBeg
        navigationController?.pushViewController(navigaet, animated: true)
    }
}
