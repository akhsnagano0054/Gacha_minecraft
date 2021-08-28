//
//  PickaxeViewController.swift
//  Gacha_minecraft
//
//  Created by akhs_nagano@icloud.com on 2021/07/10.
//

import UIKit

class PickaxeViewController3: UIViewController {

    var probabilityNumber3: Int!
    var enchantlevelNumber3: Int!
    var rankNumber3: Int!
    
    @IBOutlet var itemImageView3: UIImageView!
    @IBOutlet var enchantlevelLavel3: UILabel!
    @IBOutlet var rankLavel3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        probabilityNumber3 = Int.random(in:0...9)
        
        if probabilityNumber3 > 6 {
            itemImageView3.image = UIImage(named: "NetheritePickaxe")
            rankNumber3 = 3
    
        }else{
            itemImageView3.image = UIImage(named: "Diamond_Pickaxe")
            rankNumber3 = 2
        }
        
        enchantlevelNumber3 = Int.random(in:0...9)
        
        if enchantlevelNumber3 == 9 {
            enchantlevelLavel3.text = String (3)
            enchantlevelLavel3.textColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            rankNumber3 = rankNumber3 + 3
            
        }else if enchantlevelNumber3 > 6 {
            enchantlevelLavel3.text = String (2)
            enchantlevelLavel3.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            rankNumber3 = rankNumber3 + 2
            
        }else if enchantlevelNumber3 > 3 {
            enchantlevelLavel3.text = String (1)
            enchantlevelLavel3.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            rankNumber3 = rankNumber3 + 1
            
        }else{
            enchantlevelLavel3.text = String (0)
            enchantlevelLavel3.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            rankNumber3 = rankNumber3 + 0
        }
        
        if rankNumber3 > 4 {
            rankLavel3.text = String("Epic")
            rankLavel3.textColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        }else if rankNumber3 > 2 {
            rankLavel3.text = String("Rare")
            rankLavel3.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }else if rankNumber3 > 0 {
            rankLavel3.text = String("Uncommon")
            rankLavel3.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }else{
            rankLavel3.text = String("Common")
            rankLavel3.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }

        
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
