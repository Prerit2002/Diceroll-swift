//
//  ViewController.swift
//  diceroll
//
//  Created by Prerit Rawtani on 17/12/20.
//

import UIKit

class ViewController: UIViewController {

    let array = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var randomnum = 0
    
    @IBOutlet weak var diceimages: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func buttonpress(_ sender: Any) {
        randomnum = Int(arc4random_uniform(6))
        diceimages.image = UIImage(named : array[randomnum])
        label.text = "you rolled ->\(randomnum + 1)"
    }
}
