//
//  ViewController.swift
//  PokeYou!
//
//  Created by Xin ZHANG on 3/5/17.
//  Copyright © 2017 ccw630. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderSt: UISlider!

    @IBOutlet weak var btnLong: UIButton!
    @IBOutlet weak var btnShort: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sliderSt.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi/2))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shortPressed(_ sender : UIButton) {
        Vibrate.vibrateDo(Int32(100*2*sliderSt.value),st:sliderSt.value);
        print(sliderSt.value)
        //AudioServicesPlaySystemSound(UInt32(kSystemSoundID_Vibrate))
    }
    
    @IBAction func longPressed(_ sender : UIButton) {
        Vibrate.vibrateDo(Int32(300*2*sliderSt.value),st:sliderSt.value);
        //AudioServicesPlaySystemSound(UInt32(kSystemSoundID_Vibrate))
    }


}

