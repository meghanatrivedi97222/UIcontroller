//
//  ViewController.swift
//  Segment,switch,slider
//
//  Created by Vaibhav on 23/05/18.
//  Copyright © 2018 Vaibhav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label_switch: UILabel!
   
    @IBOutlet weak var myswitch: UISwitch!
    @IBOutlet weak var label_slider: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var label_segmentcontrol: UILabel!
    @IBOutlet weak var segmentcontrol: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func action_segmentcontrol(_ sender: UISegmentedControl) {
        switch segmentcontrol.selectedSegmentIndex
        {
        case 0:
            label_segmentcontrol.text = "Meghana Segment Selected";
        case 1:
            label_segmentcontrol.text = "Trivedi Segment Selected";
        default:
            break
        }

    }
    
    @IBAction func action_slider(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        label_slider.text = "\(currentValue)"
    }
    @IBAction func action_switch(_ sender: UISwitch) {
        if myswitch.isOn {
            label_switch.text = "The Switch is Off"
            print("Switch is on")
            myswitch.setOn(false, animated:true)
        } else {
            label_switch.text = "The Switch is On"
            myswitch.setOn(true, animated:true)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

