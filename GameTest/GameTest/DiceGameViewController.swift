//
//  DiceGameViewController.swift
//  GameTest
//
//  Created by 순진이 on 2021/10/24.
//

import UIKit

class DiceGameViewController: UIViewController {

    
    @IBOutlet weak var firstImageView: UIImageView!
    
    @IBOutlet weak var secondImageView: UIImageView!
    
    var array: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstImageView.image = #imageLiteral(resourceName: "black1")
        secondImageView.image = #imageLiteral(resourceName: "black1")
    }
    

    @IBAction func rollButtonTapped(_ sender: UIButton) {
        firstImageView.image = array.randomElement()
        secondImageView.image = array.randomElement()
    }
    

}
