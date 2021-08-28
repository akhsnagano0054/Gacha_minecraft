//
//  BowViewController.swift
//  Gacha_minecraft
//
//  Created by akhs_nagano@icloud.com on 2021/07/10.
//

import UIKit

class BowViewController: UIViewController {

    var probabilityNumber4: Int!
    var enchantlevelNumber4: Int!
    var rankNumber4: Int!
    
    @IBOutlet var itemImageView4: UIImageView!
    @IBOutlet var enchantlevelLavel4: UILabel!
    @IBOutlet var rankLavel4: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        probabilityNumber4 = Int.random(in:0...9)
        
        if probabilityNumber4 < 10 {
            itemImageView4.image = UIImage(named: "Bow")
            rankNumber4 = 0
        }
        
        enchantlevelNumber4 = Int.random(in:0...9)
        
        if enchantlevelNumber4 > 8 {
            enchantlevelLavel4.text = String ("Infinity+powor1")
            enchantlevelLavel4.textColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            rankNumber4 = rankNumber4 + 2
            
        }else if enchantlevelNumber4 > 6 {
            enchantlevelLavel4.text = String ("Infinity")
            enchantlevelLavel4.textColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            rankNumber4 = rankNumber4 + 1
            
        }else if enchantlevelNumber4 > 3 {
            enchantlevelLavel4.text = String ("Powor2")
            enchantlevelLavel4.textColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            rankNumber4 = rankNumber4 + 1
            
        }else{
            enchantlevelLavel4.text = String ("powor1")
            enchantlevelLavel4.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            rankNumber4 = rankNumber4 + 0
        }
        
        if rankNumber4 > 8 {
            rankLavel4.text = String("Epic")
            rankLavel4.textColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        }else if rankNumber4 > 6 {
            rankLavel4.text = String("Rare")
            rankLavel4.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }else if rankNumber4 > 3 {
            rankLavel4.text = String("Uncommon")
            rankLavel4.textColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }else{
            rankLavel4.text = String("Common")
            rankLavel4.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
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

