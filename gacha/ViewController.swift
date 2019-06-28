//
//  ViewController.swift
//  gacha
//
//  Created by TAKUMA NAKAMURA on 2019/05/25.
//  Copyright © 2019 NakamuraTakuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //変数の宣言
    var number : Int = 0
    @IBOutlet var gachaButton : UIButton!
    @IBOutlet var gachaImageView : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //初期設定
        
        gachaButton.layer.cornerRadius = gachaButton.bounds.height / 2
        gachaButton.layer.masksToBounds = true
    }
    
        @IBAction func gacha(){
            number = Int (arc4random_uniform(100))
            print(number)
            if number >= 67{
                gachaImageView.image = UIImage(named: "さる.png")
            } else if number >= 34{
                gachaImageView.image = UIImage(named: "ごりら.png")
            } else if number >= 1{
                gachaImageView.image = UIImage(named: "オランウータン.png")
            } else {
                gachaImageView.image = UIImage(named: "チンパンジー.png")
            }
       
        // Do any additional setup after loading the view.
        


}

}

