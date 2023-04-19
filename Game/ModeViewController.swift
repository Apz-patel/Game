//
//  ModeViewController.swift
//  Game
//
//  Created by Ayush Patel on 08/01/23.
//

import UIKit

class ModeViewController: UIViewController {

    @IBOutlet weak var hard: UIButton!
    @IBOutlet weak var meaudium: UIButton!
    @IBOutlet weak var easy: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func easyButton(_ sender: UIButton) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let PlayGameViewController: PlayGameViewController = storyBoard.instantiateViewController(withIdentifier: "PlayGameViewController") as! PlayGameViewController
        self.navigationController?.pushViewController(PlayGameViewController, animated: true)
       
    }
    
    @IBAction func meaudiumButton(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let PlayGameViewController: PlayGameViewController = storyBoard.instantiateViewController(withIdentifier: "PlayGameViewController") as! PlayGameViewController
        self.navigationController?.pushViewController(PlayGameViewController, animated: true)
    }
    
    @IBAction func hardButton(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let PlayGameViewController: PlayGameViewController = storyBoard.instantiateViewController(withIdentifier: "PlayGameViewController") as! PlayGameViewController
        self.navigationController?.pushViewController(PlayGameViewController, animated: true)
    }
    
}
