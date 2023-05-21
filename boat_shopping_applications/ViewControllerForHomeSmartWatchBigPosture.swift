//
//  ViewControllerForHomeSmartWatchBigPosture.swift
//  boat_shopping_applications
//
//  Created by R&W on 17/05/23.
//

import UIKit

class ViewControllerForHomeSmartWatchBigPosture: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    var arrForHomeWatch = [131,132,133,134,135,136,137,138,139,140]
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var heartButton: UIButton!
    
    @IBOutlet weak var collectionviewForWatchForHomeToNextPage: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        shareButton.layer.cornerRadius = 40
//        shareButton.layer.masksToBounds = true
//        heartButton.layer.cornerRadius = 40
//         heartButton.layer.masksToBounds = true
    }
    

    @IBAction func backButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForHouse") as! ViewControllerForHouse
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
        arrForHomeWatch.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let CellForWatch1 = collectionviewForWatchForHomeToNextPage.dequeueReusableCell(withReuseIdentifier: "cellForWatch1", for: indexPath) as! CollectionViewCellForWatch
        CellForWatch1.imgWatch.image = UIImage(named: "\(arrForHomeWatch[indexPath.row])")
        return CellForWatch1
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 413, height: 427)
    }
}
