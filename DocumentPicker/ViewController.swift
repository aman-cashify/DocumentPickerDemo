//
//  ViewController.swift
//  DocumentPicker
//
//  Created by NK Jagne on 15/09/19.
//  Copyright © 2019 Narendra Jagne. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController, UIDocumentPickerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let documentPicker = UIDocumentPickerViewController(documentTypes: [String(kUTTypeText),String(kUTTypeContent),String(kUTTypeItem),String(kUTTypeData)], in: .import)
        //Call Delegate
        documentPicker.delegate = self
        self.present(documentPicker, animated: true)
        
    }
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
        print(urls)
    }


}

