//
//  ViewController1.swift
//  Exercise1
//
//  Created by Surendra on 16/05/2019.
//  Copyright © 2019 Surendra. All rights reserved.
//

import UIKit
import RxSwift

class ViewController1: UIViewController {

    private let selectedNameVariable = Variable("Unknown")
    
    var selectedNameObservable: Observable<String> {
        return self.selectedNameVariable.asObservable()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction private func jimButtonTapped(_ sender: UIButton) {
        selectedNameVariable.value = "Jim"
    }
    @IBAction private func tomButtonTapped(_ sender: UIButton) {
        selectedNameVariable.value = "Tom"
    }
    @IBAction private func rockyButtonTapped(_ sender: UIButton) {
        selectedNameVariable.value = "Rocky"
    }
    
}
