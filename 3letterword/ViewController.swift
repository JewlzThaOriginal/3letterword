//
//  ViewController.swift
//  3letterword
//
//  Created by Aiden Martinez on 4/5/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var outletA: UILabel!
    @IBOutlet var outlet1: [UILabel]!
    var letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var counter = 0
    var currentLetter = "A"
    @IBOutlet weak var horizontalStackV: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tapGesture(_ sender: Any) {
        currentLetter = letters[counter]
        outletA.text = currentLetter
        let selectedPoint = ((sender as! AnyObject) .location(in: horizontalStackV))
        for label in outlet1{
            if label.frame.contains(selectedPoint)
            {label.text = "\(currentLetter)"}
        }
        counter += 1
            
        if counter == 26{
                
                counter = resetCounter()
        
    }
    func resetCounter() -> Int
    {
        let alert = UIAlertController(title: "resetting Counter", message: nil, preferredStyle:  .alert)
        let okAction = UIAlertAction(title: "ok", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        return 0
    }

    
}


}
