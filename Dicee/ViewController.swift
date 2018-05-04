//
//  ViewController.swift
//  Dicee
//
//  Created by Oguz on 3.10.2017.
//  Copyright © 2017 Oguz Karatoruk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var d1 : Int = 0
    var d2 : Int = 0
    let diceArray=["dice1","dice2","dice3","dice4","dice5","dice6"]
    @IBOutlet weak var diceIV1: UIImageView!
    @IBOutlet weak var diceIV2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: UIButton) {
        zarlariguncelle()
    }
    func zarlariguncelle(){
        d1=Int(arc4random_uniform(6))
        d2=Int(arc4random_uniform(6))
        print(d1)
        print(d2)
        diceIV1.image=UIImage(named: diceArray[d1])
        diceIV2.image=UIImage(named: diceArray[d2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        zarlariguncelle()
    }
    
}

