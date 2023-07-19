//
//  AViewController.swift
//  Shopping_App
//
//  Created by Kunal Saini on 28/04/23.
//

import UIKit

class AViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let labelData = ["Food", "PG", "Transport", "Stationary", "Grocery", "Fruits", "Salon"]
    let image = ["Food", "PG", "Transport", "Stationary", "Grocery", "Fruits", "Salon"]
    
    var index = 0
    
    
    
    
    @IBOutlet weak var cView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cView.delegate = self
        cView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = cView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.imageView.image = UIImage(named: image[(indexPath as NSIndexPath).row])
        cell.cellLabel.text = labelData[indexPath.row]
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = (collectionView.frame.size.width-20)/2
        return CGSize(width: size, height: size)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        index = indexPath.row
        
        if index == 0{
            performSegue(withIdentifier: "Food", sender: self)
        }
        else if index == 1{
            performSegue(withIdentifier: "PG", sender: self)
        }
        else if index == 2{
            performSegue(withIdentifier: "Transport", sender: self)
        }
        else if index == 3{
            performSegue(withIdentifier: "Stationary", sender: self)
        }
        else if index == 4{
            performSegue(withIdentifier: "Grocery", sender: self)
        }
        else if index == 5{
            performSegue(withIdentifier: "Fruits", sender: self)
        }
        else if index == 6{
            performSegue(withIdentifier: "Salon", sender: self)
        }
    }
    
}
