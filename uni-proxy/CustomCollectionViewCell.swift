//
//  CustomCollectionViewCell.swift
//  Shopping_App
//
//  Created by Kunal Saini on 30/04/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    //Welcome cell on AviewController
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    //Transport cell on TransportViewController
    @IBOutlet weak var tImage: UIImageView!
    @IBOutlet weak var tLabel: UILabel!
    
    //Food cell on FoodViewController
    @IBOutlet weak var fImage: UIImageView!
    @IBOutlet weak var fLabel: UILabel!
    
    //PG cell on PGViewController for Common
    @IBOutlet weak var PGImage: UIImageView!
    @IBOutlet weak var PGLabel: UILabel!
    
    //Boy cell for BoysPGViewController
    @IBOutlet weak var bImage: UIImageView!
    @IBOutlet weak var bLabel: UILabel!
    
    //Girl cell for GirlsPGViewController
    @IBOutlet weak var gImage: UIImageView!
    @IBOutlet weak var gLabel: UILabel!
    
    
    
}
