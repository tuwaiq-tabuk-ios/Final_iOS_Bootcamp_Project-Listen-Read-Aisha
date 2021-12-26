//
//  SplashClass.swift
//  ProtoType_cookRec
//
//  Created by Aisha Ali on 12/7/21.
//

import Foundation
import UIKit


class SplashClass:UIViewController{
  
  var count = 0
  @IBOutlet weak var image: UIImageView!
  @IBOutlet weak var dotOne: UIImageView!
  @IBOutlet weak var dotTwo: UIImageView!
  @IBOutlet weak var dotThree: UIImageView!
  
  @IBOutlet weak var nextbutton: UIButton!
  
  @IBOutlet weak var firstLabel: UILabel!
  
  @IBOutlet weak var secondLabel: UILabel!
  
  
  @IBAction func buttonPressed(_ sender: UIButton) {
    
    if count == 0 {
      dotTwo.tintColor = .cmOrange3
      dotOne.tintColor = .lightGray
      image.image = UIImage(named: "Knowledge-pana")
      firstLabel.text = "“A reader lives a thousand lives before he dies . . . The man who never reads lives only one.”"
      secondLabel.text = "George R.R. Martin"
      count = count + 1
      
    } else if count == 1 {
      
      firstLabel.text = "“That’s the thing about books. They let you travel without moving your feet.”"
      secondLabel.text = "Jhumpa Lahiri"
      dotThree.tintColor = .cmOrange3
      dotTwo.tintColor = .lightGray
      image.image = UIImage(named: "Knowledge-amico")
      count = count+1
      
      
    }else {
      
      let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainVC") as! MainVC
      vc.modalPresentationStyle = .fullScreen
      present(vc,animated: false, completion: nil)

    }
  }

  
  override func viewDidLoad() {
    super.viewDidLoad()
    nextbutton.layer.cornerRadius = 30
    image.image = UIImage(named: "Book lover-bro")
    firstLabel.text = "“There is more treasure in books than in all the pirate's loot on Treasure Island.”"
    secondLabel.text = "Walt Disney"
    
  }
}
