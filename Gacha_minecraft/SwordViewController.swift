//
//  SwordViewController.swift
//  Gacha_minecraft
//
//  Created by akhs_nagano@icloud.com on 2021/07/10.
//

import UIKit

class SwordViewController: UIViewController {

    var probabilityNumber2: Int!
    var enchantlevelNumber2: Int!
    var rankNumber2: Int!
    
    @IBOutlet var itemImageView2: UIImageView!
    @IBOutlet var enchantlevelLavel2: UILabel!
    @IBOutlet var rankLavel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        probabilityNumber2 = Int.random(in:0...9)
        
        if probabilityNumber2 == 9 {
            itemImageView2.image = UIImage(named: "Netherite_Sword")
            rankNumber2 = 3
    
        }else if probabilityNumber2 > 4 {
            itemImageView2.image = UIImage(named: "Diamond_Sword")
            rankNumber2 = 2

        }else{
            itemImageView2.image = UIImage(named: "Ilon_Sword")
            rankNumber2 = 0
        }
        
        enchantlevelNumber2 = Int.random(in:0...9)
        
        if enchantlevelNumber2 == 9 {
            enchantlevelLavel2.text = String (3)
            enchantlevelLavel2.textColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            rankNumber2 = rankNumber2 + 3
            
        }else if enchantlevelNumber2 > 6 {
            enchantlevelLavel2.text = String (2)
            enchantlevelLavel2.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            rankNumber2 = rankNumber2 + 2
            
        }else if enchantlevelNumber2 > 3 {
            enchantlevelLavel2.text = String (1)
            enchantlevelLavel2.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            rankNumber2 = rankNumber2 + 1
            
        }else{
            enchantlevelLavel2.text = String (0)
            enchantlevelLavel2.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            rankNumber2 = rankNumber2 + 0
        }
        
        if rankNumber2 > 4 {
            rankLavel2.text = String("Epic")
            rankLavel2.textColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        }else if rankNumber2 > 2 {
            rankLavel2.text = String("Rare")
            rankLavel2.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }else if rankNumber2 > 0 {
            rankLavel2.text = String("Uncommon")
            rankLavel2.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }else{
            rankLavel2.text = String("Common")
            rankLavel2.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
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
