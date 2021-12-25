//
//  CollectionViewController.swift
//  ProtoType-CollectionsView-"Aisha_Ali"
//
//  Created by Aisha Ali on 11/30/21.
//

import UIKit

private let reuseIdentifier = String(describing: LabelCell.self)

//"LabelCell"

class HomeCollectionVC: UICollectionViewController {
  
  var currentDescription: String = ""
  var currentname: String = ""

  
  let items = [
    Item(imageName: "Books", description: "Books"),
    Item(imageName: "To-Do", description: "Books"),
//    Item(imageName: "", description: "Locations"),
//    Item(imageName: "", description: "Diary"),
//    Item(imageName: "Loations", description: "Locations"),
//    Item(imageName: "-Do", description: "To-Do"),
//    Item(imageName: "Diry", description: "Diary"),
//    Item(imageName: "", description: "Locations"),
//    Item(imageName: "TDo", description: "To-Do")


//                Item(name: "One", description: "Description item 1"),
//                Item(name: "Two", description: "Description item 2"),
//                Item(name: "Three", description: "Description item 3"),
//                Item(name: "Four", description: "Description item 4"),
//                Item(name: "Five", description: "Description item 5"),
//                Item(name: "Six", description: "Description item 6")

  ]
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    print("#file - #function ")
    print(" - reudeableIdentifier: \(reuseIdentifier)")
    
    let nib = UINib(nibName: reuseIdentifier, bundle: nil)
    
    collectionView.register(nib,
                            forCellWithReuseIdentifier: reuseIdentifier)
    
    configureSize(numberOfHorizantalCells:1, marginsBetweenCells: 10)
  }
  
  
  // MARK: UICollectionViewDataSource
  
  override func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  
  override func collectionView(_ collectionView: UICollectionView,
                               numberOfItemsInSection section: Int) -> Int {
    return items.count
  }
  
  override func collectionView(_ collectionView: UICollectionView,
                               cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier,
                                                  for: indexPath) as! LabelCell
    cell.titlleLabel.text = "\(items[indexPath.row].description)"
    cell.categorize.image = UIImage(named: items[indexPath.row].imageName)
    return cell
  }
  
  override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
  
    
    performSegue(withIdentifier: "show_detail", sender: nil)
  }
  
  
  //  // MARK: - Navigation
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    
  }
  
  
}


