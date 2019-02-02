//
//  tempViewController.swift
//  Facilities
//
//  Created by hager on 2/2/19.
//  Copyright © 2019 Vodafone. All rights reserved.
//

import UIKit
import SDWebImage

class ServiceDetailsViewController: UIViewController {
    
    @IBOutlet weak var cardView: CardView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var channelsSubtitleLabel: UILabel!
    @IBOutlet weak var channelsTitleLabel: UILabel!
    @IBOutlet weak var channelsImageView: UIImageView!
    @IBOutlet weak var timeFreeSubtitleLabel: UILabel!
    @IBOutlet weak var timeFreeTitleLabel: UILabel!
    @IBOutlet weak var timeFreeImageView: UIImageView!
    @IBOutlet weak var feesSubtitleLabel: UITextView!
    @IBOutlet weak var feesTitleLabel: UILabel!
    @IBOutlet weak var feesImageView: UIImageView!
    @IBOutlet weak var requiredDocSubtitleLabel: UILabel!
    @IBOutlet weak var requiredDocTitleLabel: UILabel!
    @IBOutlet weak var requiredDocImageView: UIImageView!
    @IBOutlet weak var prerequisitesTitleLabel: UILabel!
    @IBOutlet weak var prerequisitesSubtitleLabel: UILabel!
    @IBOutlet weak var prerequisitesImageView: UIImageView!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var serviceImageView: UIImageView!
    var service : Data?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        
        self.navigationController?.navigationBar.backIndicatorImage = #imageLiteral(resourceName: "back")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "back")
        
        self.navigationItem.title = service?.title
        
        scrollView.layer.cornerRadius = cardView.cornerRadius
        
        if let imageSource = service?.imageSrc {
            serviceImageView.sd_setImage(with: URL(string: imageSource))
        }
        
        subtitleLabel.text = service?.briefEN
        
        prerequisitesImageView.image = #imageLiteral(resourceName: "prerequisites")
        prerequisitesTitleLabel.text = "Prerequisites"
        if let data = service?.prerequisites?.data(using: String.Encoding.unicode){
            try? prerequisitesSubtitleLabel.attributedText = NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
        }
        
        requiredDocImageView.image = #imageLiteral(resourceName: "requireddoc")
        requiredDocTitleLabel.text = "Requires Document"
        if let data = service?.requiredDocuments?.data(using: String.Encoding.unicode){
            try? requiredDocSubtitleLabel.attributedText = NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
        }
        
        
        feesImageView.image = #imageLiteral(resourceName: "fees")
        feesTitleLabel.text = "Fees"
        if let data = service?.fees?.data(using: String.Encoding.unicode) {
            let attributedText = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil)
            feesSubtitleLabel.attributedText = attributedText
        }
        
        timeFreeImageView.image = #imageLiteral(resourceName: "time")
        timeFreeTitleLabel.text = "Time Frame"
        timeFreeSubtitleLabel.text = service?.timeFrame
        
        channelsImageView.image = #imageLiteral(resourceName: "service")
        channelsTitleLabel.text = "Service Channels"
        channelsSubtitleLabel.text = service?.serviceChannels
    }
    
    
}
