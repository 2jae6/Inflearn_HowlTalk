//
//  ViewController.swift
//  Inflearn_HowlTalk
//
//  Created by 1 on 2020/11/29.
//

import UIKit
import SnapKit
import Firebase

class ViewController: UIViewController {

    
    var box = UIImageView()
    var remoteConfig: RemoteConfig!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
  
        
        remoteConfig = RemoteConfig.remoteConfig()
        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 0
        remoteConfig.configSettings = settings

        
        
        
        self.view.addSubview(box)
        box.snp.makeConstraints{ (make) in
            make.center.equalTo(self.view)
        }
        box.image = UIImage(named: "loading_icon")
        self.view.backgroundColor = UIColor(hex: "000000")
    }


}
 
extension UIColor {
    convenience init(hex: String) {
        let scanner = Scanner(string: hex)
        scanner.scanLocation = 0
        
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(
            red: CGFloat(r) / 0xff,
            green: CGFloat(g) / 0xff,
            blue: CGFloat(b) / 0xff, alpha: 1
        )
    }
}

