//
//  Some Page.swift
//  Part2_L1_DavidArabyan
//
//  Created by David on 05.04.2021.
//

import UIKit

class SomePage: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }
}
