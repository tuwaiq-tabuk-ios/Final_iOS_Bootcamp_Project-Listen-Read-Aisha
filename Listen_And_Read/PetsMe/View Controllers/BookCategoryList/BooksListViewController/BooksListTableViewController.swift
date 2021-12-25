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
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
