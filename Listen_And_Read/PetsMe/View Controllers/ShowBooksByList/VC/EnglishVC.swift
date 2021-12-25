//
//  EnglishVC.swift
//
//
//
//

import UIKit

class EnglishVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate {
  
  
  var oldTabbarFr: CGRect = .zero
  let cellId = "PeopleCell"
  var bookEE: Book?
  var english: [Book] = []
  lazy var searchBar:UISearchBar = UISearchBar()
  
  var searchBook: Array<Book> = bookList2
  
  
  func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    if searchText.isEmpty {
      searchBook = bookList2
    } else {
      searchBook = searchBook.filter({ oneBook in
        return oneBook.name.starts(with: searchText)
      })
    }
    collectionView.reloadData()
  }
  
  func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
    searchBar.resignFirstResponder()
  }
  
  
  override func viewDidLoad() {
    
    
//        configureSize(numberOfHorizantalCells: 1, marginsBetweenCells: 20)
    super.viewDidLoad()
    view.addSubview(collectionView)
    collectionView.delegate = self
    collectionView.dataSource = self
    
    collectionView.register(BooksCell.self,
                            forCellWithReuseIdentifier: "cell2")
    setupCollectionConstraints()
    collectionView.frame = view.bounds
    
    searchBar.showsCancelButton = false
    searchBar.searchBarStyle = UISearchBar.Style.default
    searchBar.placeholder = " Search..."
    searchBar.sizeToFit()
    searchBar.isTranslucent = false
    searchBar.backgroundImage = UIImage()
    searchBar.delegate = self
    navigationItem.titleView = searchBar
    
    oldTabbarFr = self.tabBarController?.tabBar.frame ?? .zero
    
  }
  
  
  let collectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .vertical
    layout.minimumLineSpacing = 0
    layout.minimumInteritemSpacing = 0
    let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)

    
    return cv
  }()
  
  
  func setupCollectionConstraints() {
    
    let margins = view.layoutMarginsGuide
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 20).isActive = true
    collectionView.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 20).isActive = true
    collectionView.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -20).isActive = true
    collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
    collectionView.heightAnchor.constraint(equalToConstant: 550).isActive = true
    collectionView.widthAnchor.constraint(equalToConstant: 400).isActive = true
    collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
  }
  
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return searchBook.count
  }
  
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! BooksCell
    cell.setCell2(book2: bookList2[indexPath.row] )
    
    //    cell.backgroundColor = UIColor(named: "Color")
    
    return cell
  }
  
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    return CGSize(width: 300, height: 300)
  }
  
  
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
   
  }
//  numberOfHorizantalCells
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
}
