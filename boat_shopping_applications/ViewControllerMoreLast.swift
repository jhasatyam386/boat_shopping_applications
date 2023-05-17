//
//  ViewControllerMoreLast.swift
//  boat_shopping_applications
//
//  Created by R&W on 14/04/23.
//

import UIKit

class ViewControllerMoreLast: UIViewController,UITableViewDelegate,UITableViewDataSource{
 
    @IBOutlet weak var tableviewForMore: UITableView!
    var arrForMore = ["Rate Us","Share The App","","boAt Plugin Labz","boAt Warranty Policy","boAty Werables App","boAt X Bira","boAt x Masaba","boAt | DC","boAtXMarvel","Brand To Trust","Bulk Orders","Career Opportunities","Composition of Board Committees","Dance Thought Life","Do What #FloatsYourboAt","E-Waste Managments Policy","Earn Rewards Referring Friends","Five Days Of Fashion","Flash Smart Watch Launch","Frequently Asked Questions","Gifting","Investor Relations","Policies","Privacy Policy","PROITUP","Queen of Hip Hop","Refferal","Return Policy","Security","Service Center List","Social Responsibility","Sunburn","Sunburn","Tearm of Service","Terms of Use","The boAt ProGear app","The boAthead Vibe","Track Your Order","TRebel","Warranty & Support","Who Are We?","Why Buy Direct","Sall with boAt","2 million","AAVANTE BAR 1800v2 + BlITZ 1508 + AIRDROPS 501 ANC","AAVANTE BAR 1800v2 + AIRDROPS 501 ANC","AD 141","Awards And Appreciation","b.o.A.t. Vochers","Batman","boAt Black Friday Sale","boAt Black Friday Sale 2022","boAt FloAtverse","boAt Herables App","boAt Herables App","boAt Hub App","boAt X Baazigar","boAt x Netflix T&C","Cult Fit Gratification","Custom add to cart - Test","Customer Notification","customhomepage-NEVER-DELETE","Diwali","DWFYB","elite-club-early-access","Festival Landing page","FLASH X boAt","gift with boAt","gift with boAt","IDFC XboAt","Love Out Loud","Loyal boatheads rewards","Meet n Greet Hardik Pandiya","Meet the boAtheads","Micro Site","New Year Werables","Newsletter","quick-Checkout","Quinn API","quiz","Redirection","Rock in india","Rock with boAt","Rock with boAt TnC","Shark Tank","Shark Tank India Season 2","Smartwatches","Stream Edition","successful-login","TAta IPL 2023 with boAt","Tearms And Conditions","Test","The Fact in Your Stars | boAt Lifestyle","User Agreement","Valentine's","Welcome to boAt Days | Explore Crazy Deals,discounts on your favourite brands and more","Women's day","","Login"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func SearchButtonAction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForsearch") as! ViewControllerForsearch
        navigationController?.pushViewController(navigaet, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrForMore.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellLast1 = tableviewForMore.dequeueReusableCell(withIdentifier: "cellLast1") as! TableViewCellLast
        cellLast1.labelForMore.text = "\(arrForMore[indexPath.row])"
        return cellLast1
    }
    
    @IBAction func searchButtonAction(_ sender: Any) {
        let navigaet = storyboard?.instantiateViewController(withIdentifier: "ViewControllerForsearch") as! ViewControllerForsearch
        navigationController?.pushViewController(navigaet, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
}
