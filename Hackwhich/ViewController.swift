//
//  ViewController.swift
//  Hackwhich
//
//  Created by Brendon Zach on 4/4/22.
//

import UIKit

class ViewController: UIViewController
{
    var letters:[String] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var counter: Int = 0
    var currentLetter: String!
    
    @IBOutlet weak var stackView2: UIStackView!
    
    @IBOutlet var wordLabel: [UILabel]!
    
    @IBOutlet weak var currentLetterLabel: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        currentLetter = letters[counter]
//        currentLetterLabel.text = currentLetter
    
    }

    @IBAction func tapped2(_ sender: Any) {
        currentLetter = letters[counter]
        currentLetterLabel.text = currentLetter
        let selectedPoint = ((sender as! AnyObject).location(in: stackView2))
        
        for label in wordLabel
        {
            if label.frame.contains(selectedPoint)
            {
                label.text = "\(currentLetter)"
                print(label.text)
            }
            
        }
    counter += 1
    
    if counter == 26
    {
        counter = resetcounter()
        currentLetter = letters[counter]
        currentLetterLabel.text = currentLetter
        
        for label in self.wordLabel
        {
            label.text = "?"
        }
    }
    
//    @IBAction func whenTapped(_ sender: Any)
//    {
//
//
//
//    }
//
    
    
            
    }
    func resetcounter() -> Int
    {
    let alert = UIAlertController(title: "Resetting Counter", message: nil, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .default)

    alert.addAction(okAction)
    present(alert, animated: true, completion: nil)
    return 0



    }

    
}

