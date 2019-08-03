//
//  ViewController.swift
//  Copy
//
//  Created by Harsh Patel on 7/11/18.
//  Copyright © 2018 Harsh Patel. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    var lastChangeCount = 0
    var timer : Timer?
  
    override func viewDidLoad() {
        super.viewDidLoad()
        let pasteboard = NSPasteboard.general
        
         lastChangeCount = pasteboard.changeCount
         timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [unowned self] timer in
            if pasteboard.changeCount != self.lastChangeCount {
                NSSound(named: NSSound.Name("tap"))?.play()
                self.lastChangeCount = pasteboard.changeCount
            }
        }

    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    
    
    
    
    

}

