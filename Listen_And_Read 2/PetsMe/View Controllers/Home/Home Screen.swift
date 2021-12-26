//
//  Home Screen.swift
//  SignIn_ProtoType
//
//  Created by Aisha Ali on 11/27/21.
//

import Foundation
import UIKit
//LabelCell
private let reuseIdentifier2 = String(describing: LabelCell.self)

class Home: UIViewController{
    
  
  let searchBarController = UISearchController(searchResultsController: nil)
  var timer: Timer?
//  var results = Results(hits: [])
//  var recentResults = Results(hits: [])
  
  
  @IBOutlet weak var categoriesCollection: UICollectionView!
  @IBOutlet weak var bookOfTheDayCollection: UICollectionView!
    
  let bookOfTheDay = [
                       ImageDetails(myImages: "Alice’s Adventures in Wonderland", name: "Alice’s Adventures in Wonderland"),
                       ImageDetails(myImages: "The Romance of a Pirate's Daughter", name: "The Romance of a Pirate's Daughter"),
                       ImageDetails(myImages: "Peter and Wendy", name: "Peter and Wendy"),
  ]
  
  let bookByCtegory = [
                       ImageDetails(myImages: "Novel", name: "Novel"),
                       ImageDetails(myImages: "History", name: "History"),
                       ImageDetails(myImages: "Mystery", name: "Mystery"),
                       ImageDetails(myImages: "Fiction", name: "Fiction"),
                       ImageDetails(myImages: "Starter", name: "Starter"),
                       ImageDetails(myImages: "Romance", name: "Romance"),
                       ImageDetails(myImages: "Fantasy", name: "Fantasy"),
                       ImageDetails(myImages: "Science", name: "Science"),
                       ImageDetails(myImages: "Health", name: "Health"),
                       ImageDetails(myImages: "Children", name: "Children"),
  ]
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let nib2 = UINib(nibName: reuseIdentifier2, bundle: nil)
    categoriesCollection.register(nib2, forCellWithReuseIdentifier: reuseIdentifier2)
    configureSize(numberOfHorizantalCells: 4, marginsBetweenCells: 20)

    configureSearchBar()
    
    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    navigationController?.navigationBar.isHidden = false
    searchBarController.searchBar.text = ""
    
  }
  
  //MARK: - SearchBar
  
  func configureSearchBar()  {
    
    navigationItem.searchController = searchBarController
//    searchBarController.searchBar.delegate = self
    searchBarController.searchBar.placeholder = "Search Books"
    searchBarController.searchBar.enablesReturnKeyAutomatically = true
    navigationController?.navigationBar.tintColor = .cmOrange3
    
  }
}

extension Home: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
  
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
    if collectionView == self.bookOfTheDayCollection {
      return bookOfTheDay.count

    } else {
      return bookByCtegory.count
    }
  }

  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    if collectionView == self.bookOfTheDayCollection {
      
      let cellA = bookOfTheDayCollection.dequeueReusableCell(withReuseIdentifier: "BookOfTheDayCell", for: indexPath) as! BookOfTheDayCell
      
      cellA.bookOfTheDayImage.image = UIImage(named: bookOfTheDay[indexPath.row].myImages)
      cellA.bookOfTheDayLabel.text = "\(bookOfTheDay[indexPath.row].name)"
      cellA.bookOfTheDay_View.layer.cornerRadius = 20

      return cellA
      
    } else {
      
      let cellB = categoriesCollection.dequeueReusableCell(withReuseIdentifier: reuseIdentifier2, for: indexPath) as! LabelCell
      cellB.categorize.image = UIImage(named:  bookByCtegory[indexPath.row].myImages)
      cellB.titlleLabel.text = "\(bookByCtegory[indexPath.row].name)"
      cellB.root_View.layer.cornerRadius = 20
//      performSegue(withIdentifier: "show", sender: nil)

      
//      cellB.titleImage.image = UIImage(named: bookByCtegory[indexPath.row].myImages)
//      cellB.bookByCategory_View.layer.cornerRadius = 20
//      cellB.categortName_Label.text = "\(bookByCtegory[indexPath.row].name)"
      
      return cellB
    }
    
  }
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
    performSegue(withIdentifier: "show", sender: nil)

  }
  
  
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    if let layout = collectionViewLayout as? UICollectionViewFlowLayout{
      return layout.itemSize
    }else{
      
      return .zero
      //      CGSize(width: 0, height: 0)
    }
  }
  
  
  func configureSize (numberOfHorizantalCells: CGFloat, marginsBetweenCells:CGFloat){
    
    guard let layout = categoriesCollection.collectionViewLayout as? UICollectionViewFlowLayout else {
      
      return
    }
    
    print("\n\n\(#file) - \(#function)\n\n")
    
    //*** Cell Spacing
    
    let totalMarginBetweenCells:CGFloat = marginsBetweenCells * (numberOfHorizantalCells - 1)
    print(" - totalMarginBetweenCells: \(totalMarginBetweenCells)")
    
    let marginPerCell:CGFloat = totalMarginBetweenCells / numberOfHorizantalCells
    print(" - marginPerCell: \(marginPerCell)")
    
    
    let frameWidth = categoriesCollection.frame.width
    
//    let frameWidth:CGFloat = 400
    print(" - frameWidth: \(frameWidth)")
    
    let cellWidth = (frameWidth/numberOfHorizantalCells) - marginsBetweenCells
    
    print(" - cellWidth: \(cellWidth)")
    
    let cellHeight = cellWidth
    
    layout.minimumLineSpacing = marginPerCell
    layout.minimumInteritemSpacing = 0
    
    
    layout.estimatedItemSize = .zero
    layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
    print(" - layout.itemSize: \(layout.itemSize)")
    
    
  }
}
