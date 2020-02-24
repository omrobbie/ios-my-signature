//
//  ViewController.swift
//  My Signature
//
//  Created by omrobbie on 24/02/20.
//  Copyright © 2020 omrobbie. All rights reserved.
//

import UIKit
import SignaturePad

class ViewController: UIViewController {

    @IBOutlet weak var signaturePad: SignaturePad!
    @IBOutlet weak var imgSignature: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnSimpanTapped(_ sender: Any) {
        if let signature = signaturePad.getSignature() {
            imgSignature.image = signature
        }
    }

    @IBAction func btnUlangiTapped(_ sender: Any) {
        signaturePad.clear()
    }
}
