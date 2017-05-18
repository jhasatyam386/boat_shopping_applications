//
//  ViewControllerBigPosture5.swift
//  boat_shopping_applications
//
//  Created by R&W on 22/05/23.
//

import UIKit

class ViewControllerBigPosture5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButtonSaction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForHouse") as! ViewControllerForHouse
        navigationController?.popViewController(animated: true)
    }
    @IBAction func begButtonAction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerShoppingBeg") as! ViewControllerShoppingBeg
        navigationController?.pushViewController(navigaet, animated: true)
    }
    
    @IBAction func searchButtonaction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForsearch") as! ViewControllerForsearch
        navigationController?.pushViewController(navigaet, animated: true)
    }
}
