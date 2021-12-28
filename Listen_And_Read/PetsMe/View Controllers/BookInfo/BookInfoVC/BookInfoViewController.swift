//
//  BookInfoViewController.swift
//  PetsMe
//
//  Created by Aisha Ali on 12/27/21.
//

import UIKit

class BookInfoViewController: UIViewController {
  
  @IBOutlet weak var bookCover_ImageView: UIImageView!
  @IBOutlet weak var bookTitle_Label: UILabel!
  @IBOutlet weak var bookAuthor_Label: UILabel!
  @IBOutlet weak var bookGenre_Label: UILabel!
  @IBOutlet weak var bookSummary_Label: UILabel!
  
  
  var bookInfo : Books!
  
  var bookTitle:String = ""
  var image:String = ""
  var author:String = ""
  var genre:String = ""

  var summary:String = ""
  ////
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    
    
  }
  
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    bookTitle_Label.text = bookTitle
    bookGenre_Label.text = genre
    bookAuthor_Label.text = author
    bookSummary_Label.text = summary

        DispatchQueue.global().async{
    let data = try? Data(contentsOf: URL(string: self.image)!)
    
    if let data = data, let image = UIImage(data: data) {
      DispatchQueue.main.async {
        self.bookCover_ImageView?.image = image
        
        
        
      }
    }
  }
  }
  
  
  
  @IBAction func button_Pressed(_ sender: UIButton) {
    
    
    
    
  }
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
