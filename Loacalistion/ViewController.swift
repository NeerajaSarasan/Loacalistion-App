//
//  ViewController.swift
//  Loacalistion
//
//  Created by Neeraja Sarasan on 13/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var segmentedCntrl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        if segmentedCntrl.selectedSegmentIndex == 0 {
            var path = Bundle.main.path(forResource: "en", ofType: "lproj")
            var bundle = Bundle(path: path!)
            label1.text = NSLocalizedString("label1Key",bundle: bundle!, comment: "")
            label2.text = NSLocalizedString("label2Key", bundle: bundle!,comment: "")
        }else {
            var path = Bundle.main.path(forResource: "fr", ofType: "lproj")
            var bundle = Bundle(path: path!)
            label1.text = NSLocalizedString("label1Key",bundle: bundle! ,comment: "")
            label2.text = NSLocalizedString("label2Key",bundle: bundle! , comment: "")
        }
    }
    
}

