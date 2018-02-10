//
//  ViewController.swift
//  NotificationUserInfoModel
//
//  Created by danny@dannysung.com on 02/09/2018.
//  Copyright (c) 2018 danny@dannysung.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var label: UILabel!
    

    override func viewWillAppear(_ animated: Bool) {
        let noteCenter = NotificationCenter.default
        
        noteCenter.addObserver(self, selector: #selector(progressDidUpdate(_:)), name: .ExampleProgress, object: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        let noteCenter = NotificationCenter.default
        
        noteCenter.removeObserver(self)
    }

    @objc public func progressDidUpdate(_ note: Notification) {
        guard let progressModel = ProgressNoteModel(note: note) else { return }
 
        DispatchQueue.main.async {
            self.progressView.progress = progressModel.progress
            self.label.text = progressModel.stage
        }
    }
}

