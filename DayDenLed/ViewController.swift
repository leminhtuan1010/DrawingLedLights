//
//  ViewController.swift
//  DayDenLed
//
//  Created by Minh Tuan on 5/19/17.
//  Copyright © 2017 Minh Tuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txt_nhap: UITextField!

    @IBAction func btn_chay(_ sender: Any) {
        veBong()
    }
    var n: Int!
    var _margin: CGFloat = 40
    var bien: CGFloat = 100

    override func viewDidLoad() {
        super.viewDidLoad()
//    veBong()
        

    }
    func veBong()  {
        n = Int(txt_nhap.text!)
        for hienThiHang in 0..<n{
            for hienThiCot in 0..<n{
           
            let image = UIImage(named: "bong")
            let ball = UIImageView(image: image)
            ball.center = CGPoint(x:_margin + CGFloat(hienThiHang) * tinhkhaongcach(),y:bien + CGFloat(hienThiCot) * chieuDai())
            self.view.addSubview(ball)
            
            }
        }
    }
    func tinhkhaongcach() -> CGFloat {
        let khoangCach = (self.view.bounds.size.width - (2 * (_margin))) / CGFloat(n - 1)
        return khoangCach
    }
    func chieuDai() -> CGFloat {
        let khoangCachDai = (self.view.bounds.size.height - (2 * (bien))) / CGFloat(n - 1)
        return khoangCachDai
    }


}

