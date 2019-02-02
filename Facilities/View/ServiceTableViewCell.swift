//
//  ServiceTableViewCell.swift
//  Facilities
//
//  Created by hager on 2/1/19.
//  Copyright © 2019 Vodafone. All rights reserved.
//

import UIKit

class ServiceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cardView: CardView!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var backView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backView.layer.cornerRadius = cardView.cornerRadius
    }
    
}
