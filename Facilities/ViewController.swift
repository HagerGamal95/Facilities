//
//  ViewController.swift
//  Facilities
//
//  Created by hager on 2/1/19.
//  Copyright © 2019 Vodafone. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    var selectedCell : Int?
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var serviceTableView: UITableView!
    
    var services : [Data]?
    

    override func viewDidLoad() {
        super.viewDidLoad()
         
        self.navigationItem.title = "Facilities"
        
        serviceTableView.register(UINib(nibName: "ServiceTableViewCell", bundle: nil), forCellReuseIdentifier: "myDataCell")
        self.serviceTableView.dataSource = self
        self.serviceTableView.delegate = self
        
        NetworkService.shared.getServices(pageSize: 10, pageIndex: 1, departmentNumber: 2) { data , error in
            if data != nil {
                self.services = (data?.data)!
                self.activityIndicator.hidesWhenStopped=true
                self.activityIndicator.stopAnimating()
                self.serviceTableView.reloadData()
            }
        }
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedCell = indexPath.row
        performSegue(withIdentifier: "goToDetails", sender: self)
        }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let backItem = UIBarButtonItem()
        backItem.title = ""
        navigationItem.backBarButtonItem = backItem
        if segue.identifier == "goToDetails"
        {
            if let serviceDetailsViewcontroller = segue.destination as? ServiceDetailsViewController{
                serviceDetailsViewcontroller.service = self.services?[selectedCell ?? 0]
            }
        }
    }


    
}
