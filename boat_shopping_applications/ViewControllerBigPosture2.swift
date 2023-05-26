//
//  ViewControllerBigPosture2.swift
//  boat_shopping_applications
//
//  Created by R&W on 22/05/23.
//

import UIKit

class ViewControllerBigPosture2: UIViewController ,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
   
    @IBOutlet weak var collectionForSecound: UICollectionView!
    var arrForSecond = [201,202,203,204,205]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func backButtonAction(_ sender: Any) {
        _ = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForHouse") as! ViewControllerForHouse
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func searchButtonAction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForsearch") as! ViewControllerForsearch
        navigationController?.pushViewController(navigaet, animated: true)
    }
    
    @IBAction func begButtonAction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerShoppingBeg") as! ViewControllerShoppingBeg
        navigationController?.pushViewController(navigaet, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrForSecond.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellForSecound = collectionForSecound.dequeueReusableCell(withReuseIdentifier: "cellForSecound", for: indexPath) as! CollectionViewCellForsecondPage
        cellForSecound.imgForSecond.image = UIImage(named: "\(arrForSecond[indexPath.row])")
        return cellForSecound
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 413, height: 427)
    }
    
}
