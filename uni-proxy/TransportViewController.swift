//
//  TransportViewController.swift
//  Shopping_App
//
//  Created by Kunal Saini on 07/05/23.
//

import UIKit

class TransportViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   

    @IBOutlet weak var TransportCollectionView: UICollectionView!
    
    let transportImage = ["Bus", "Metro", "Train", "Flight"]
    let transportLabel = ["Bus", "Metro", "Train", "Flight"]
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TransportCollectionView.dataSource = self
        TransportCollectionView.delegate = self
        
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return transportImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = TransportCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.tImage.image = UIImage(named: transportImage[indexPath.row])
        cell.tLabel.text = transportLabel[indexPath.row]
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (TransportCollectionView.frame.width-20)/2, height: (TransportCollectionView.frame.width-20)/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        index = indexPath.row
        
        if index == 0{
            performSegue(withIdentifier: "Bus", sender: self)
        }
        else if index == 1{
            performSegue(withIdentifier: "Metro", sender: self)
        }
        else if index == 2{
            performSegue(withIdentifier: "Train", sender: self)
        }
        else{
            performSegue(withIdentifier: "Flight", sender: self)
        }
    }
    

}
