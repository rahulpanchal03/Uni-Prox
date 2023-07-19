//
//  GirlsPGViewController.swift
//  Shopping_App
//
//  Created by Kunal Saini on 09/05/23.
//

import UIKit

class GirlsPGViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var girlCollectionView: UICollectionView!
    
    let girlImage = ["abc", "xyz", "abc", "mno"]
    let girlLabel = ["abc", "xyz", "abc", "mno"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        girlCollectionView.delegate = self
        girlCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return girlImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = girlCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.gImage.image = UIImage(named: girlImage[indexPath.row])
        cell.gLabel.text = girlLabel[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (girlCollectionView.frame.width-20)/2
        return CGSize(width: size, height: size)
    }
    
    
}
