//
//  ViewControllerForHome.swift
//  boat_shopping_applications
//
//  Created by R&W on 14/04/23.
//

import UIKit

class ViewControllerForHouse: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    var arrForlastarr = [81,82,83,84,85,86,87,88,89,90,91,92]
    var arrForWatchairSpe3 = [71,72,73]
    var arrTrendingCategories = [61,62,63,64,65]
    var arrTreadingImg = [51,52,53]
    var  arrForAllStarAdimage = [41,42,43,44,45]
    var arrForGiftscardForImg = [31,32,33,34]
    var arrBigPostureFromBoat = [21,22,23,24,25]
    var arrForMiniImage = [11,12,13,14]
    var arrMiniImageTitle = ["TRUE WIRELESS","WIRELESS","WIRED","SPEAKERS"]
    
    var arrForIMG  = [1,2,3,4,5,6,7,8,9,10]
    var arrForTitle = ["1 Year Warranty","7 Days Replacement","Free Shipping","Secure Checkout","GST Billing","1 Year Warranty","7 Days Replacement","Free Shipping","Secure Checkout","GST Billing"]
    
  
    @IBOutlet weak var collectionviewLastC: UICollectionView!
    @IBOutlet weak var collectionViewSpeaAirWatch: UICollectionView!
    @IBOutlet weak var collectionviewForTrendingCartegries: UICollectionView!
    @IBOutlet weak var collectionViewForTeendingImg: UICollectionView!
    @IBOutlet weak var collectionForStarImg: UICollectionView!
    @IBOutlet weak var collectionviewForBoatCard: UICollectionView!
    @IBOutlet weak var collectionViewMiniImage: UICollectionView!
    @IBOutlet weak var collectionViewForBigThreeadPosture: UICollectionView!
    @IBOutlet weak var collectionviewForInfo: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionviewForInfo{
            return arrForIMG.count
        }
        else if collectionView == self.collectionViewForBigThreeadPosture {
            return arrBigPostureFromBoat.count
        }
        else if collectionView == self.collectionViewMiniImage{
            return arrForMiniImage.count
        }
        else if collectionView == self.collectionviewForBoatCard{
            return arrForGiftscardForImg.count
        }
        else if collectionView == self.collectionForStarImg{
            return arrForAllStarAdimage.count
        }
        else if collectionView == self.collectionViewForTeendingImg{
            return arrTreadingImg.count
        }
        else if collectionView == self.collectionviewForTrendingCartegries{
            return arrTrendingCategories.count
        }
        else if collectionView == self.collectionViewSpeaAirWatch{
            return arrForWatchairSpe3.count
        }
        else{
            return arrForlastarr.count
        }
       
        
   }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionviewForInfo{
        let cell1 = collectionviewForInfo.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell1
        cell1.lablforDetail.text = "\(arrForTitle[indexPath.row])"
        cell1.img1.image = UIImage(named: "\(arrForIMG[indexPath.row])")
        cell1.backgroundColor = .white
        return cell1
        }
        else if collectionView == self.collectionViewForBigThreeadPosture{
            let cell2 = collectionViewForBigThreeadPosture.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
            cell2.img2.image = UIImage(named: "\(arrBigPostureFromBoat[indexPath.row])")
            return cell2

        }
        else if collectionView == self.collectionViewMiniImage{
            let cell3 = collectionViewMiniImage.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCellFor2
            cell3.imgMiniForImageView.image = UIImage(named: "\(arrForMiniImage[indexPath.row])")
            cell3.titleForMiniImage.text = "\(arrMiniImageTitle[indexPath.row])"
            cell3.imgMiniForImageView.layer.cornerRadius = 51
            cell3.layer.masksToBounds = true

            return cell3
        }
        else if collectionView == self.collectionviewForBoatCard{
            let cell4 = collectionviewForBoatCard.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! CollectionViewCellForTheBoatCard
            cell4.imagBoatCard.image = UIImage(named: "\(arrForGiftscardForImg[indexPath.row])")
          
           return cell4
        }
        else if collectionView == self.collectionForStarImg {
            let cell5 = collectionForStarImg.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath) as! CollectionViewCellForStarAd
            cell5.imgForStarImg.image = UIImage(named: "\(arrForAllStarAdimage[indexPath.row])")
            return cell5
        }
        else if collectionView == self.collectionViewForTeendingImg{
            let cell6 = collectionViewForTeendingImg.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath) as! CollectionViewCellForTreadingImg
            cell6.imgtrending.image = UIImage(named: "\(arrTreadingImg[indexPath.row])")
            return cell6
        }
        else if collectionView == self.collectionviewForTrendingCartegries {
            let cell7 = collectionviewForTrendingCartegries.dequeueReusableCell(withReuseIdentifier: "cell7", for: indexPath) as! CollectionViewCellForTrendingCategroies
            cell7.imgForTendingCategories.image = UIImage(named: "\(arrTrendingCategories[indexPath.row])")
            return cell7
        }
        else if collectionView == self.collectionViewSpeaAirWatch{
            let cell8 = collectionViewSpeaAirWatch.dequeueReusableCell(withReuseIdentifier: "cell8", for: indexPath) as! CollectionViewCellWatchAirSpea
            cell8.imgAirWatchSpea.image = UIImage(named: "\(arrForWatchairSpe3[indexPath.row])")
            return cell8
        }
        else {
            let cell9 = collectionviewLastC.dequeueReusableCell(withReuseIdentifier: "cell9", for: indexPath) as! CollectionViewCellLast
            cell9.imgLast.image = UIImage(named: "\(arrForlastarr[indexPath.row])")
            cell9.backgroundColor = .black

            return cell9
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.collectionviewForInfo{
            return CGSize(width: 120, height: 120)
        }
        else if collectionView == self.collectionViewForBigThreeadPosture{
            return CGSize(width: 414, height: 413)
        }
        else if collectionView == self.collectionViewMiniImage{
            return CGSize(width: 98, height: 120)

        }
        else if collectionView == self.collectionviewForBoatCard{
            return CGSize(width: 350, height: 500)
        }
        else if collectionView == self.collectionForStarImg{
            return CGSize(width: 400, height: 500)

        }
        else if collectionView == self.collectionViewForTeendingImg{
            return CGSize(width: 400, height: 500)

        }
        else if collectionView == self.collectionviewForTrendingCartegries{
            return CGSize(width: 150, height: 220)
        }
        else if collectionView == self.collectionViewSpeaAirWatch{
            return CGSize(width: 350, height: 850)
        }
        else{
            let cvSize = collectionviewLastC.frame.width
            return CGSize(width: (cvSize-9.2)/4, height:130)

        }
    }
    @IBAction func searchButtonAction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForsearch") as! ViewControllerForsearch
        navigationController?.pushViewController(navigaet, animated: true)
    }
     
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.collectionViewForBigThreeadPosture {
            if indexPath.row == 0{
                let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForHomeSmartWatchBigPosture") as! ViewControllerForHomeSmartWatchBigPosture
                navigationController?.pushViewController(navigation, animated: true)
            }
            else if indexPath.row == 1{
                let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewControllerBigPosture2") as! ViewControllerBigPosture2
                navigationController?.pushViewController(navigation, animated: true)
            }
            else if indexPath.row == 2{
                let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewControllerBigPosture2For") as! ViewControllerBigPosture2For
                navigationController?.pushViewController(navigation, animated: true)
            }
            else if indexPath.row == 3{
                let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewControllerFor4") as! ViewControllerFor4
                navigationController?.pushViewController(navigation, animated: true)
            }
            else if indexPath.row == 4 {
                let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewControllerBigPosture5") as! ViewControllerBigPosture5
                navigationController?.pushViewController(navigation, animated: true)
            }
            else{
                let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewControllerBigPosture5") as! ViewControllerBigPosture5
                navigationController?.pushViewController(navigation, animated: true)
            }
        }
        
    }
}
