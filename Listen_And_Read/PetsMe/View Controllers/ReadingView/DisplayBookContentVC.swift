//
//  File.swift
//  PetsMe
//
//  Created by Aisha Ali on 12/30/21.
//

import Foundation
import AVFoundation
import UIKit

class DisplayBookContentVC: UIViewController {
  
  let synth = AVSpeechSynthesizer()

  @IBOutlet weak var bookContent: UITextView!
  
  
  override func viewDidLoad() {

    super.viewDidLoad()
    synth.delegate = self
  }
  
  
  
  
  
  
  
  
  @IBAction func button_Pressed(_ sender: UIButton) {
    if sender.tag == 0 {
      
    } else if sender.tag == 1 {
      
      
      if synth.isSpeaking {
          // when synth is already speaking or is in paused state

          if synth.isPaused {
              synth.continueSpeaking()
          }else {
          synth.pauseSpeaking(at: AVSpeechBoundary.immediate)
          }
        
      }else{
          // when synth is not started yet

//          let string = bookContent
        let utterance = AVSpeechUtterance(string: bookContent.text)

          utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
          synth.speak(utterance)
      }
      
    }

  }
  
}

extension DisplayBookContentVC: AVSpeechSynthesizerDelegate {
  
    private func attributedString(from string: String, highlighting characterRange: NSRange) -> NSAttributedString {
        guard characterRange.location != NSNotFound else {
            return NSAttributedString(string: string)
        }
        
        let mutableAttributedString = NSMutableAttributedString(string: string)
        mutableAttributedString.addAttribute(.foregroundColor, value: UIColor.red, range: characterRange)
//      bookContent.font = .systemFont(ofSize: 30)

        return mutableAttributedString
    }
  func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange, utterance: AVSpeechUtterance) {
      self.bookContent.attributedText = attributedString(from: utterance.speechString, highlighting: characterRange)
    bookContent.font = .systemFont(ofSize: 24)
    bookContent.textAlignment = .center
    

  }
  
  func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance) {
      self.bookContent.attributedText = NSAttributedString(string: utterance.speechString)
  }
  
  func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance) {
      self.bookContent.attributedText = NSAttributedString(string: utterance.speechString)
  }
}
  
