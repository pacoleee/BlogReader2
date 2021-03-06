//
//  DetailViewController.swift
//  Blog Reader 2
//
//  Created by Paco Lee on 2016-06-06.
//  Copyright © 2016 Paco Lee. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        
        if let detail = self.detailItem {
            if let wv = self.webView {
                wv.loadHTMLString(detail.valueForKey("content")!.description, baseURL: nil)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

