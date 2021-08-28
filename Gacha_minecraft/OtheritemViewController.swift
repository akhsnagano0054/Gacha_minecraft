//
//  OtheritemViewController.swift
//  Gacha_minecraft
//
//  Created by akhs_nagano@icloud.com on 2021/07/10.
//

import UIKit

class PickaxeViewController: UIViewController {

    var probabilityNumber6: Int!
    var enchantlevelNumber6: Int!
    var rankNumber6: Int!
    
    @IBOutlet var itemImageView6: UIImageView!
    @IBOutlet var enchantlevelLavel6: UILabel!
    @IBOutlet var rankLavel6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        probabilityNumber6 = Int.random(in:1...100)
        
        if probabilityNumber6 > 97 {
            itemImageView6.image = UIImage(named: "Command_block")
            rankNumber6 = 7
    
        }else if probabilityNumber6 > 92 {
            itemImageView6.image = UIImage(named: "Totem_of_Undying")
            rankNumber6 = 6
            
        }else if probabilityNumber6 > 87 {
            itemImageView6.image = UIImage(named: "Enchanted_Golden_Apple")
            rankNumber6 = 6
            
        }else if probabilityNumber6 > 82 {
            itemImageView6.image = UIImage(named: "Enchanted_Trident")
            rankNumber6 = 6
            
        }else if probabilityNumber6 > 74 {
            itemImageView6.image = UIImage(named: "x2_Ticket")
            rankNumber6 = 5
            
        }else if probabilityNumber6 > 60 {
            itemImageView6.image = UIImage(named: "Bridge_Egg")
            rankNumber6 = 4
            
        }else if probabilityNumber6 > 50 {
            itemImageView6.image = UIImage(named: "Golden_Apple_x3")
            rankNumber6 = 3
            
        }else if probabilityNumber6 > 41 {
            itemImageView6.image = UIImage(named: "Tickets_x2")
            rankNumber6 = 2
            
        }else if probabilityNumber6 > 32 {
            itemImageView6.image = UIImage(named: "Ticket")
            rankNumber6 = 2
            
        }else if probabilityNumber6 > 24 {
            itemImageView6.image = UIImage(named: "Steakx")
            rankNumber6 = 1
            
        }else if probabilityNumber6 > 16 {
            itemImageView6.image = UIImage(named: "TNT_x8")
            rankNumber6 = 1
            
        }else if probabilityNumber6 > 8 {
            itemImageView6.image = UIImage(named: "Water_Bucket")
            rankNumber6 = 1
            
        }else if probabilityNumber6 > 0 {
            itemImageView6.image = UIImage(named: "Lava_Bucket")
            rankNumber6 = 1
            
        }
            
        
        enchantlevelNumber6 = Int.random(in:0...9)
        
        if enchantlevelNumber6 > 7 {
            enchantlevelLavel6.text = String ("x2!!")
            enchantlevelLavel6.textColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            rankNumber6 = rankNumber6 + 2
    
        }else{
            rankNumber6 = rankNumber6 + 0
        }
        
        
        if rankNumber6 > 5 {
            rankLavel6.text = String("Epic")
            rankLavel6.textColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        }else if rankNumber6 > 3 {
            rankLavel6.text = String("Rare")
            rankLavel6.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }else if rankNumber6 > 1 {
            rankLavel6.text = String("Uncommon")
            rankLavel6.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }else{
            rankLavel6.text = String("Common")
            rankLavel6.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
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
