//
//  Books.swift
//  PetsMe
//
//  Created by Aisha Ali on 12/25/21.
//
import Foundation


struct Books  {
  
  let title : String
  let authorname : String
  var imageLink : String
  let format : String
  let book : String
  
  init(_ books : Dictionary<String, Any>) {
    
    let testSummary: Any
    testSummary = books["summary"] as Any
    print("-----testSummary------- \(testSummary)\n")
    
    self.title = (books["title"] as? String)!
  
    
    self.book = ""
    
    let authors = books["authors"]as? [Dictionary<String,Any>]
    if authors!.count > 0
    {
      let authorName = ((authors![0]["name"]) as? String)!
      let array = authorName.components(separatedBy: ", ")
      if array.count>1 {
        self.authorname = array[1]+" "+array[0]
        
      }else {
        self.authorname = array[0]
      }
      
    }else{
      self.authorname = "NA"
    }
    
    
    
    //  MARK:  - Edit File get onle text/plain

    let imageJson = books["formats"] as? Dictionary<String,String>
    self.imageLink = String((imageJson?["image/jpeg"])!)
//    self.imageLink = (imageJson?["image/jpeg"]!) as! String
    
    if let link = imageJson!["text/plain; charset=utf-8"] {
    self.format = link
    }else{
      self.format = "NA"
    }

  }
}




