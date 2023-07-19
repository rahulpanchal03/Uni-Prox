//
//  BoysPGViewController.swift
//  Shopping_App
//
//  Created by Kunal Saini on 09/05/23.
//

import UIKit

class BoysPGViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var boyCollectionview: UICollectionView!
    
    let boyImage = ["abc", "xyz", "mno", "asx"]
    let boyLabel = ["abc", "xyz", "mno", "asx"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boyCollectionview.dataSource = self
        boyCollectionview.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return boyImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = boyCollectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.bImage.image = UIImage(named: boyImage[indexPath.row])
        cell.bLabel.text = boyLabel[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (boyCollectionview.frame.width-20)/2, height: (boyCollectionview.frame.width-20)/2)
    }
}
