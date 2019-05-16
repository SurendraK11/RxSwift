//
//  ViewController.swift
//  Exercise1
//
//  Created by Surendra on 16/05/2019.
//  Copyright © 2019 Surendra. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    @IBOutlet var nameInfo: UILabel!
    
    let disposeBag = DisposeBag()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        let contoller = ViewController1(nibName: nil, bundle: nil)
        contoller.selectedNameObservable.subscribe(onNext: { [weak self] (name) in
            self?.nameInfo.text = name
            print("name: \(name)")
        }).disposed(by: disposeBag)

        self.navigationController?.pushViewController(contoller, animated: false)
    }
    
}

