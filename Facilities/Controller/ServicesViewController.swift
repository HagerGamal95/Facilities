//
//  ViewController.swift
//  Facilities
//
//  Created by hager on 2/1/19.
//  Copyright © 2019 Vodafone. All rights reserved.
//

import UIKit
import SDWebImage

class ServicesViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var errorView: UIView!
    var selectedCell : Int?
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var serviceTableView: UITableView!
    @IBOutlet weak var errorLabel: UILabel!
    
    var services : [Data]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        loadData()
    }
    
    // MARK:- Prepare For Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetails"
        {
            if let serviceDetailsViewcontroller = segue.destination as? ServiceDetailsViewController{
                serviceDetailsViewcontroller.service = self.services?[selectedCell ?? 0]
            }
        }
    }
    
    func setupUI(){
        self.navigationItem.title = NSLocalizedString("pageTitle", comment: "")
        
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
        
        serviceTableView.register(UINib(nibName: "ServiceTableViewCell", bundle: nil), forCellReuseIdentifier: "myDataCell")
        self.serviceTableView.dataSource = self
        self.serviceTableView.delegate = self
    }
    
    func loadData() {
        self.errorView.isHidden = true
        self.serviceTableView.isHidden = true
        self.activityIndicator.startAnimating()
        
        NetworkService.shared.getServices(pageSize: 10, pageIndex: 1, departmentNumber: 2) { data , error in
            self.activityIndicator.stopAnimating()
            
            if data != nil && error == nil {
                self.services = (data?.data)!
                
                self.errorView.isHidden = true
                self.serviceTableView.isHidden = false
                self.serviceTableView.reloadData {
                    self.animateTable()
                }
            }else{
                self.errorLabel.text = NSLocalizedString("error", comment: "")
                self.errorView.isHidden = false
                self.serviceTableView.isHidden = true
            }
        }
    }
    
    func animateTable() {
        serviceTableView.reloadData()
        
        let cells = serviceTableView.visibleCells
        let tableHeight: CGFloat = serviceTableView.bounds.size.height
        
        for i in cells {
            let cell: UITableViewCell = i as UITableViewCell
            cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
        }
        
        var index = 0
        
        for a in cells {
            let cell: UITableViewCell = a as UITableViewCell
            UIView.animate(withDuration: 1.5, delay: 0.05 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: [], animations: {
                cell.transform = CGAffineTransform(translationX: 0, y: 0);
            }, completion: nil)
            
            index += 1
        }
    }
    
    // MARK :- actions
    
    @IBAction func retryButtonDidTapped(_ sender: Any) {
        loadData()
    }
    
    // MARK:- Table Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return services?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myDataCell", for: indexPath) as! ServiceTableViewCell
        if let services = self.services {
            if let imageSource = services[indexPath.row].imageSrc {
                cell.myImage.sd_setImage(with: URL(string: imageSource))
            }
            cell.titleLabel.text = services[indexPath.row].titleEN
            cell.subtitleLabel.text = services[indexPath.row].briefTrimmedEN
        }
        return cell
    }
    
    // MARK:- Table Delegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCell = indexPath.row
        performSegue(withIdentifier: "goToDetails", sender: self)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        UIView.animate(withDuration: 1.0) {
            cell.alpha = 1.0
        }
    }
    
}
