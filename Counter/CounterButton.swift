//
//  CounterButton.swift
//  Counter
//
//  Created by Gordon Seto on 2016-08-21.
//  Copyright © 2016 Gordon Seto. All rights reserved.
//

import UIKit

class CounterButton: UIButton {

    override func awakeFromNib() {
        self.layer.cornerRadius = self.bounds.size.height * 0.5
        self.clipsToBounds = true
    }

}
