//
//  DetailViewController.swift
//  CustomCell
//
//  Created by Eddie Ahn on 17/09/2019.
//  Copyright © 2019 Eddie Ahn. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var detailData = [String:String]() // data 받을 곳.

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var amountLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = detailData["name"]
        amountLabel.text = detailData["amount"]
        valueLabel.text = detailData["value"]
        imgView.layer.cornerRadius = 50.0
        imgView.layer.masksToBounds = true
        imgView.image = UIImage(named: detailData["image"]!)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
