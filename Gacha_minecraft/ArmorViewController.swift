//
//  ArmorViewController.swift
//  Gacha_minecraft
//
//  Created by akhs_nagano@icloud.com on 2021/07/10.
//

import UIKit

class ArmorViewController: UIViewController {

    var probabilityNumber1: Int!
    var enchantlevelNumber1: Int!
    var rankNumber1: Int!
    
    @IBOutlet var itemImageView1: UIImageView!
    @IBOutlet var enchantlevelLavel1: UILabel!
    @IBOutlet var rankLavel1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        probabilityNumber1 = Int.random(in:0...19)
        
        if probabilityNumber1 > 17 {
            itemImageView1.image = UIImage(named: "Netherite_armor")
            rankNumber1 = 4
    
        }else if probabilityNumber1 > 13 {
            itemImageView1.image = UIImage(named: "Diamond_armor")
            rankNumber1 = 3

        }else if probabilityNumber1 > 6 {
            itemImageView1.image = UIImage(named: "Ilon_armor")
            rankNumber1 = 1
            
        }else{
            itemImageView1.image = UIImage(named: "chain_armor")
            rankNumber1 = 0
        }
        
        enchantlevelNumber1 = Int.random(in:0...19)
        
        if enchantlevelNumber1 > 16 {
            enchantlevelLavel1.text = String (2)
            enchantlevelLavel1.textColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            rankNumber1 = rankNumber1 + 3
            
            
        }else if enchantlevelNumber1 > 11 {
            enchantlevelLavel1.text = String (1)
            enchantlevelLavel1.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            rankNumber1 = rankNumber1 + 1
            
        }else{
            enchantlevelLavel1.text = String (0)
            enchantlevelLavel1.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            rankNumber1 = rankNumber1 + 0
        }
        
        if rankNumber1 > 4 {
            rankLavel1.text = String("Epic")
            rankLavel1.textColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        }else if rankNumber1 > 2 {
            rankLavel1.text = String("Rare")
            rankLavel1.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }else if rankNumber1 > 0 {
            rankLavel1.text = String("Uncommon")
            rankLavel1.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }else{
            rankLavel1.text = String("Common")
            rankLavel1.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
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
