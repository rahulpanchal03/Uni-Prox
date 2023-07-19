//
//  PGViewController.swift
//  Shopping_App
//
//  Created by Kunal Saini on 09/05/23.
//

import UIKit

class PGViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
  
    @IBOutlet weak var PGCollectionView: UICollectionView!
    
    let PGImage = ["Boys", "Girls"]
    let PGLabel = ["Boys", "Girls"]
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PGCollectionView.delegate = self
        PGCollectionView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return PGImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = PGCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.PGImage.image = UIImage(named: PGImage[indexPath.row])
        cell.PGLabel.text = PGLabel[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (PGCollectionView.frame.width-20)/2, height: (PGCollectionView.frame.width-20)/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         
        index = indexPath.row
        
    /*    if index == 0{
            performSegue(withIdentifier: "Boys", sender: self)
        }
        else if index == 1{
            performSegue(withIdentifier: "Girls", sender: self)
        }*/
    }

}
