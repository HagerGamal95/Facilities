//
//  TableViewExtention.swift
//  Facilities
//
//  Created by hager on 2/2/19.
//  Copyright © 2019 Vodafone. All rights reserved.
//

import UIKit

extension UITableView {
    func reloadData(completion: @escaping ()->()) {
        UIView.animate(withDuration: 0, animations: { self.reloadData() })
        { _ in completion() }
    }
}
