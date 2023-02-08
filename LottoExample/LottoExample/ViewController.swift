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
    
    @IBOutlet weak var firstNumber: UILabel!
    
    @IBOutlet weak var secondNumber: UILabel!
    
    @IBOutlet weak var thirdNumber: UILabel!
    
    @IBOutlet weak var fourthNumber: UILabel!
    
    @IBOutlet weak var fifthNumber: UILabel!
    
    @IBOutlet weak var sixthNumber: UILabel!
    
    var rndArray: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rndSelect()
        ballColorSelect(array: rndArray)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func makeLottoNumber(_ sender: UIButton) {
        rndSelect()
        ballColorSelect(array: rndArray)
    }
    
}

extension ViewController {
    func rndSelect(){
        rndArray = [Int.random(in: 1...45),Int.random(in: 1...45),Int.random(in: 1...45),Int.random(in: 1...45),Int.random(in: 1...45),Int.random(in: 1...45)].sorted()
        
        firstNumber.text = "\(rndArray[0])"
        secondNumber.text = "\(rndArray[1])"
        thirdNumber.text = "\(rndArray[2])"
        fourthNumber.text = "\(rndArray[3])"
        fifthNumber.text = "\(rndArray[4])"
        sixthNumber.text = "\(rndArray[5])"
        
    }
    
    func ballColorSelect(array: [Int]) {
        switch array[0]{
        case 1...10:
            firstImageView.tintColor = UIColor.yellow
        case 11...20:
            firstImageView.tintColor = UIColor.blue
        case 21...30:
            firstImageView.tintColor = UIColor.red
        case 31...40:
            firstImageView.tintColor = UIColor.gray
        case 41...45:
            firstImageView.tintColor = UIColor.green
        default:
            break
        }
        
        switch array[1]{
        case 1...10:
            secondImageView.tintColor = UIColor.yellow
        case 11...20:
            secondImageView.tintColor = UIColor.blue
        case 21...30:
            secondImageView.tintColor = UIColor.red
        case 31...40:
            secondImageView.tintColor = UIColor.gray
        case 41...45:
            secondImageView.tintColor = UIColor.green
        default:
            break
        }
        
        switch array[2]{
        case 1...10:
            thirdImageView.tintColor = UIColor.yellow
        case 11...20:
            thirdImageView.tintColor = UIColor.blue
        case 21...30:
            thirdImageView.tintColor = UIColor.red
        case 31...40:
            thirdImageView.tintColor = UIColor.gray
        case 41...45:
            thirdImageView.tintColor = UIColor.green
        default:
            break
        }
        
        switch array[3]{
        case 1...10:
            fourthImageView.tintColor = UIColor.yellow
        case 11...20:
            fourthImageView.tintColor = UIColor.blue
        case 21...30:
            fourthImageView.tintColor = UIColor.red
        case 31...40:
            fourthImageView.tintColor = UIColor.gray
        case 41...45:
            fourthImageView.tintColor = UIColor.green
        default:
            break
        }
        
        switch array[4]{
        case 1...10:
            fifthImageView.tintColor = UIColor.yellow
        case 11...20:
            fifthImageView.tintColor = UIColor.blue
        case 21...30:
            fifthImageView.tintColor = UIColor.red
        case 31...40:
            fifthImageView.tintColor = UIColor.gray
        case 41...45:
            fifthImageView.tintColor = UIColor.green
        default:
            break
        }
        
        switch array[5]{
        case 1...10:
            sixthImageView.tintColor = UIColor.yellow
        case 11...20:
            sixthImageView.tintColor = UIColor.blue
        case 21...30:
            sixthImageView.tintColor = UIColor.red
        case 31...40:
            sixthImageView.tintColor = UIColor.gray
        case 41...45:
            sixthImageView.tintColor = UIColor.green
        default:
            break
        }
    }
}
