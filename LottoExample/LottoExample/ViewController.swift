//
//  ViewController.swift
//  LottoExample
//
//  Created by 김시훈 on 2023/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var fifthImageView: UIImageView!
    @IBOutlet weak var sixthImageView: UIImageView!
    @IBOutlet weak var firstNumberLabel: UILabel!
    @IBOutlet weak var secondNumberLabel: UILabel!
    @IBOutlet weak var thirdNumberLabel: UILabel!
    @IBOutlet weak var fourthNumberLabel: UILabel!
    @IBOutlet weak var fifthNumberLabel: UILabel!
    @IBOutlet weak var sixthNumberLabel: UILabel!
    
    var rndArray: [Int] = []
    var rndSet: Set<Int> = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setRnd()
    }
    
    @IBAction func generateLottoNumber(_ sender: UIButton) {
        setRnd()
    }
}

extension ViewController {
    func setRnd(){
        rndArray = []
        rndSet = []
        
        let labelArray = [firstNumberLabel,
                          secondNumberLabel,
                          thirdNumberLabel,
                          fourthNumberLabel,
                          fifthNumberLabel,
                          sixthNumberLabel]
        
        let imageViewArray = [firstImageView,
                              secondImageView,
                              thirdImageView,
                              fourthImageView,
                              fifthImageView,
                              sixthImageView]
        
        while rndSet.count < 6 {
            let number = Int.random(in: 1...45)
            rndSet.insert(number)
        }
        
        rndArray = [Int](rndSet)
        rndArray.sort()
        
        for a in 0...5 {
            if let label = labelArray[a] {
                label.text = "\(rndArray[a])"
            }
        }
        
        for a in 0...5 {
            if let imageView = imageViewArray[a] {
                switch rndArray[a]{
                case 1...10:
                    imageView.tintColor = UIColor.yellow
                case 11...20:
                    imageView.tintColor = UIColor.blue
                case 21...30:
                    imageView.tintColor = UIColor.red
                case 31...40:
                    imageView.tintColor = UIColor.gray
                case 41...45:
                    imageView.tintColor = UIColor.green
                default:
                    break
                }
            }
        }
    }
}
