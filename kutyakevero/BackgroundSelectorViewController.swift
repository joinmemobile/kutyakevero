//
//  BackgroundSelectorViewController.swift
//  kutyakevero
//
//  Created by Adam Horvath on 2017. 12. 18..
//

import UIKit


class BackgroundSelectorViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {    

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var nextButton: UIBarButtonItem!
    
    var model: Model!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.backgrounds.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        model.selectedBackground = model.backgrounds[indexPath.item]
        performSegue(withIdentifier: "Show sharing", sender: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCollectionViewCell", for: indexPath) as! PhotoCellCollectionViewCell
        cell.imageView.image = model.backgrounds[indexPath.item].image
        return cell
    }
    
    @IBAction func showSharing(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "Show sharing", sender: self)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Show sharing" {
            let shareViewController = segue.destination as! ShareViewController
            shareViewController.model = model
        }
    }

}
