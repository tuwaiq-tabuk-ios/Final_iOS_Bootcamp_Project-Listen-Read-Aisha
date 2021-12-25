//
//  BooksListTableViewController.swift
//  PetsMe
//
//  Created by Aisha Ali on 12/25/21.
//

import UIKit

private let reuseIdentifier2 = String(describing: BookListCell.self)

class BooksListTableViewController: UITableViewController {
  
  
  
  
  
  let bookInfo = [
    BookListItems(cover:"Alice’s Adventures in Wonderland", title: "Alice’s Adventures in Wonderland", author: "Aisha Ali"),
    BookListItems(cover:"Alice’s Adventures in Wonderland", title: "Alice’s Adventures in Wonderland", author: "Aisha Ali"),
    BookListItems(cover:"Alice’s Adventures in Wonderland", title: "Alice’s Adventures in Wonderland", author: "Aisha Ali"),
    BookListItems(cover:"Alice’s Adventures in Wonderland", title: "Alice’s Adventures in Wonderland", author: "Aisha Ali"),
  ]
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let nib2 = UINib(nibName: reuseIdentifier2, bundle: nil)
    tableView.register(nib2, forCellReuseIdentifier: reuseIdentifier2)
    
    
    
    
  }
  
  // MARK: - Table view data source
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    return bookInfo.count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier2, for: indexPath)as!BookListCell
    cell.bookCoverImage.image = UIImage(named: bookInfo[indexPath.row].cover!)
    cell.bookAuthorName.text = bookInfo[indexPath.row].author!
    cell.bookTitleLabel.text = bookInfo[indexPath.row].title
    cell.bookGenreLabel.text = "Action"
    
    // Configure the cell...
    
    return cell
  }
  
  
}
