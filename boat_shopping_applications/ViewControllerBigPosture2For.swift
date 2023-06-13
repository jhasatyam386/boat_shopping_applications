//
//  ViewControllerBigPosture2For.swift
//  boat_shopping_applications
//
//  Created by R&W on 22/05/23.
//

import UIKit

class ViewControllerBigPosture2For: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
   
    
    var arrWatch = [401,402,403,404,405]
    
    @IBOutlet weak var collectionviewForWatch: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func backButtonaction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForHouse") as! ViewControllerForHouse
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func begButtonAction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerShoppingBeg") as! ViewControllerShoppingBeg
        navigationController?.pushViewController(navigaet, animated: true)
    }
    
    @IBAction func searchButtonAction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForsearch") as! ViewControllerForsearch
        navigationController?.pushViewController(navigaet, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrWatch.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellForWatch = collectionviewForWatch.dequeueReusableCell(withReuseIdentifier: "cellForWatch", for: indexPath) as! CollectionViewCell3boatWatch
        cellForWatch.imgForboatwatch.image = UIImage(named: "\(arrWatch[indexPath.row])")
        return cellForWatch
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 413, height: 427)
    }
    
}
