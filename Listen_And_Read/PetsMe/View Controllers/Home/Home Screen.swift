//
//  Home Screen.swift
//  SignIn_ProtoType
//
//  Created by Aisha Ali on 11/27/21.
//

import Foundation
import UIKit

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



//extension Home: UISearchBarDelegate {
//  func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//    if let recipe = searchBarController.searchBar.text {
//      timer?.invalidate()
//
//      timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false, block: { _ in
//        self.showLoadingView()
////        NetworkManager.shared.getRecipes(for: recipe) { [weak self] result in
//          guard let self = self else { return }
//          self.dismissLoadingView()
//          switch result {
//          case .success(let results):
//            DispatchQueue.main.async {
//              self.results = results
//              //              self.exploreCollectionView.reloadData()
//            }
//          case .failure(let error):
//            print(error)
//          }
////        }
//      })
//    }
//  }
//}











