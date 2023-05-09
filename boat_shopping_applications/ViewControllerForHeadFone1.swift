//
//  ViewControllerForHeadFone1.swift
//  boat_shopping_applications
//
//  Created by R&W on 14/04/23.
//

import UIKit

class ViewControllerForHeadFone1: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
   
    
    @IBOutlet weak var collectionHome2: UICollectionView!
    
    var arrForImgToHome2 = [101,102,103,104,105,106,107,108,109,110,111,112]
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func searchButton2ActionForNaviget(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForsearch") as! ViewControllerForsearch
        navigationController?.pushViewController(navigaet, animated: true)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrForImgToHome2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell11 = collectionHome2.dequeueReusableCell(withReuseIdentifier: "cell11", for: indexPath) as! CollectionViewCellForHome2
        cell11.imghome2Collection.image = UIImage(named:"\(arrForImgToHome2 [indexPath.row])")
        return cell11
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 700, height: 200)
    }


}
