//
//  PotionViewController.swift
//  Gacha_minecraft
//
//  Created by akhs_nagano@icloud.com on 2021/07/10.
//

import UIKit

class PotionViewController: UIViewController {

    var probabilityNumber5: Int!
    var enchantlevelNumber5: Int!
    var rankNumber5: Int!
    
    @IBOutlet var itemImageView5: UIImageView!
    @IBOutlet var enchantlevelLavel5: UILabel!
    @IBOutlet var rankLavel5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        probabilityNumber5 = Int.random(in:0...9)
        
        if probabilityNumber5 > 7 {
            itemImageView5.image = UIImage(named: "Potion_of_Strength")
            rankNumber5 = 1
    
        }else if probabilityNumber5 > 5 {
            itemImageView5.image = UIImage(named: "Potion_of_Regeneration")
            rankNumber5 = 1
            
        }else if probabilityNumber5 > 2 {
            itemImageView5.image = UIImage(named: "Potion_of_Slow_Falling")
            rankNumber5 = 0

        }else{
            itemImageView5.image = UIImage(named: "Potion_of_Fire_Resistance")
            rankNumber5 = 0
        }
        
        enchantlevelNumber5 = Int.random(in:0...9)
            
        if enchantlevelNumber5 > 6 {
            enchantlevelLavel5.text = String ("time:II")
            enchantlevelLavel5.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            rankNumber5 = rankNumber5 + 1
            
        }else{
            enchantlevelLavel5.text = String ("time:I")
            enchantlevelLavel5.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            rankNumber5 = rankNumber5 + 0
        }
        
        if rankNumber5 == 2 {
            rankLavel5.text = String("Rare")
            rankLavel5.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }else if rankNumber5 == 1 {
            rankLavel5.text = String("Uncommon")
            rankLavel5.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }else{
            rankLavel5.text = String("Common")
            rankLavel5.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
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
