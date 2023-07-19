//
//  FoodViewController.swift
//  Shopping_App
//
//  Created by Kunal Saini on 01/05/23.
//

import UIKit

class FoodViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var FoodCollectionView: UICollectionView!
    
    let foodImage = ["Cafe Coffee Day", "Red Chilli", "Chocolate Room", "Burger Xpress"]
    
    let foodLabel = ["Cafe Coffee Day", "Red Chilli", "Chocolate Room", "Burger Xpress"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FoodCollectionView.dataSource = self
        FoodCollectionView.delegate = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = FoodCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.fImage.image = UIImage(named: foodImage[indexPath.row])
        cell.fLabel.text = foodLabel[indexPath.row]
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (FoodCollectionView.frame.width-20)/2, height: (FoodCollectionView.frame.width-20)/2)
    }
    
    var index = 0
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        index = indexPath.row
        if index == 0{
            performSegue(withIdentifier: "Cafe", sender: self)
        }
        else if index == 1{
            performSegue(withIdentifier: "Red", sender: self)
        }
        else if index == 2{
            performSegue(withIdentifier: "Chocolate", sender: self)
        }
        else if index == 3{
            performSegue(withIdentifier: "Burger", sender: self)
        }
    }
    
}
