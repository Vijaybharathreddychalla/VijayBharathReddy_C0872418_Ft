//
//  ViewController.swift
//  VijayBharathReddy_C0872418_FT
//
//  Created by Vijay Bharath Reddy Challa on 2022-11-07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Rnumber: UILabel!
    
    @IBOutlet weak var evenLbl: UILabel!
    
    @IBOutlet weak var oddLbl: UILabel!
    
    @IBOutlet weak var sourceimg: UIImageView!
    
    
    
    
    var timer: Timer?
    var seconds = 4
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        
        let tapevenLbl = UITapGestureRecognizer(target: self, action: #selector(checkeven))
        let tapoddLbl = UITapGestureRecognizer(target: self, action: #selector(checkodd))
        evenLbl.addGestureRecognizer(tapevenLbl)
        oddLbl.addGestureRecognizer(tapoddLbl)
        loadrandomnumber()
    }
    
    @objc func checkeven(){
        let number = Int(self.Rnumber.text!) ?? 0
        
        if (iseven(number: number)){
            sourceimg.image = UIImage(named: "Correct")
        }
        
    }
    
    @objc func checkodd(){
        let number = Int(self.Rnumber.text!) ?? 0
  
        if (isodd(number: number)){
            sourceimg.image = UIImage(named: "InCorrect")
        }
    }
    
    func loadrandomnumber(){
        let number = Int(arc4random_uniform(100))
        self.Rnumber.text = "\(number)"
    
    }
    @objc func iseven(number:Int) -> Bool
    {
       var x = Int(number)%2
        
        if x != 0
        {
            return false
        }
        else{return true}
    }
    
    @objc func isodd(number:Int) -> Bool
    {
        var y = Int(number)%2
        if y != 0{
            return true
        }
        else{
            return false
        }
        
    }


}

