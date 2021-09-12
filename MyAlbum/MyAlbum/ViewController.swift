//
//  ViewController.swift
//  MyAlbum
//
//  Created by 김지인 on 2021/09/07.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue : Int = 0 //인스턴스 변수
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refresh()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonClicked(_ sender: Any) {
        let message = "가격은 $ \(currentValue) 입니다" //로컬 변수
        
        let alert = UIAlertController(title: "Message", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: { action in
            self.refresh()
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    func refresh(){
        let randomPrice = arc4random_uniform(10000) + 1 //로컬변수
        currentValue = Int(randomPrice)
        priceLabel.text = ("\(currentValue)원")
    }
    
}

