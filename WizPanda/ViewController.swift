//
//  ViewController.swift
//  WizPanda
//
//  Created by Apple on 16/06/20.
//  Copyright © 2020 VT Solution. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

 
    @IBAction func imageDemoClicked(_ sender: Any) {
        goToFunctionalController(isImageViewStatus: true)
        
    }
    
    @IBAction func videoDemoClicked(_ sender: Any) {
        goToFunctionalController(isImageViewStatus: false)
    }
    
    
    private func goToFunctionalController(isImageViewStatus: Bool) {
        let sb = UIStoryboard(name: "Main", bundle:nil)
        let functionalController = sb.instantiateViewController(withIdentifier: "FunctionalViewController") as? FunctionalViewController
        functionalController?.isImageView = isImageViewStatus
        present(functionalController!, animated: true, completion: nil)
    }
    
}

