//
//  BooksListTableViewController.swift
//  PetsMe
//
//  Created by Aisha Ali on 12/25/21.
//

import UIKit

private let reuseIdentifier2 = String(describing: BookListCell.self)

class BooksListTableViewController: UITableViewController, BookMangerDelegate {
  
//  collectionView.collectionViewLayout = UICollectionViewFlowLayout()
  
  var vSpinner : UIView?
  var category: String?
  var apiUrl : URL?
  var articles: Array<Dictionary<String,Any>> = [];
  var pageNumber = 1
  var isDataLoading = false
  var booksManager = BookManager()
  var booksData = [Books]()
  var nextLink : String?
  var fetchMore = false
  
  @IBOutlet weak var searchBar: UISearchBar!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = .cmWhite
    searchBar.delegate = self
    searchBar.placeholder = "Search Books"
    
    let nib2 = UINib(nibName: reuseIdentifier2, bundle: nil)
    
    tableView.register(nib2, forCellReuseIdentifier: reuseIdentifier2)
    booksManager.delegate = self
    self.showSpinner(onView: self.view)
    booksManager.fetchBookByCategory(category: category!)
    
    
    
  }
  override func viewWillDisappear(_ animated: Bool) {
    booksData.removeAll()
  }
  override func scrollViewDidScroll(_ scrollView: UIScrollView) {
    let offsetY = scrollView.contentOffset.y
    let contentHeight = scrollView.contentSize.height
    
    if offsetY > contentHeight - scrollView.frame.height {
      if !fetchMore
      {
        beginBatchFetch()
      }
    }
  }
  func beginBatchFetch ()
  {
    fetchMore = true
    print("beginfetch")
    self.showSpinner(onView: self.view)
    booksManager.nextBooks(urlString: nextLink!)
  }
  
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return booksData.count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier2, for: indexPath)as!BookListCell
    let array = booksData[indexPath.row]
    cell.bookAuthorName.text = array.authorname
    cell.bookTitleLabel.text = array.title
    cell.bookGenreLabel.text = category
    
    DispatchQueue.global().async{
      let data = try? Data(contentsOf: URL(string: array.imageLink)! )
      
      if let data = data, let image = UIImage(data: data) {
        DispatchQueue.main.async {
          cell.bookCoverImage.image = image
          cell.bookCoverImage.contentMode = .scaleToFill
          
          
        }
      }
    }
    
    return cell
    
  }
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
 
  }
  
  
  func didUpdateBook(_ bookManager: BookManager, _ books: [Books], _ nextUrl: BookModel) {
    
    fetchMore = false
    booksData.append(contentsOf: books)
    nextLink = nextUrl.next
    
    removeSpinner()
    
    DispatchQueue.main.async {
      self.tableView.reloadData()
    }
  }
  
  func didFailWithError(error: Error) {
    
  }
  
}

extension BooksListTableViewController
{
  
  func showSpinner(onView : UIView) {
    let spinnerView = UIView.init(frame: onView.bounds)
    spinnerView.backgroundColor = UIColor.init(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
    let ai = UIActivityIndicatorView.init(style: .whiteLarge)
    ai.startAnimating()
    ai.center = spinnerView.center
    
    DispatchQueue.main.async {
      spinnerView.addSubview(ai)
      onView.addSubview(spinnerView)
    }
    
    vSpinner = spinnerView
  }
  
  func removeSpinner() {
    DispatchQueue.main.async {
      self.vSpinner?.removeFromSuperview()
      self.vSpinner = nil
    }
  }
}

extension BooksListTableViewController : UISearchBarDelegate {
  func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    if let searchText = searchBar.text
    {
      booksManager.SearchBookByCategory(category: category!, search: searchText)
    }
    
    searchBar.text = ""
    fetchMore = true
    booksData.removeAll()
    self.searchBar.endEditing(true)
    self.searchBar.layer.borderColor = UIColor.clear.cgColor
    self.showSpinner(onView: self.view)
    
  }
  
  func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
    self.searchBar.layer.borderColor = UIColor.cmWhite.cgColor
    self.searchBar.layer.borderWidth = 6
    
  }
  
}

