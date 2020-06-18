//
//  FunctionalViewController.swift
//  WizPanda
//
//  Created by Apple on 16/06/20.
//  Copyright © 2020 VT Solution. All rights reserved.
//

import UIKit

class FunctionalViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var webView: UIWebView!
    var isImageView: Bool?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if isImageView ?? true {
            webView.isHidden = true
        } else {
            imageView.isHidden = true
            playVideoOnYouTube()
        }

        // Do any additional setup after loading the view.
    }
    

    private func playVideoOnYouTube() {
        let url = URL(string: "https://www.youtube.com/watch?v=Dl4RHpoyBhc")
        let YOUTUBE =  URLRequest(url:url!)
        webView.loadRequest(YOUTUBE)
    }

    @IBAction func closeBtnClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func continueBtnClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
