//
//  ViewControllerForsearch.swift
//  boat_shopping_applications
//
//  Created by R&W on 05/05/23.
//

import UIKit

class ViewControllerForsearch: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
  
   var arrforSearchproducts = [101,102,103,104,105,106,107,108,109,110,111,112]
    
    @IBOutlet weak var collectionviewSearch: UICollectionView!
    
    @IBOutlet weak var searchbarAllSearch: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrforSearchproducts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell10 = collectionviewSearch.dequeueReusableCell(withReuseIdentifier: "cell10", for: indexPath) as! CollectionViewCellForSearchbar1
        cell10.imgForSearchbar.image = UIImage(named: "\(arrforSearchproducts[indexPath.row])")
        return cell10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 700, height: 200)
    }

   
}
