

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var gameName: UILabel!
    @IBOutlet weak var playButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.layer.cornerRadius = 10
        playButton.layer.masksToBounds = true
        gameName.layer.cornerRadius = 10
        gameName.layer.masksToBounds = true
        
    
    }

    @IBAction func playButton(_ sender: UIButton) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let ModeViewController: ModeViewController = storyBoard.instantiateViewController(withIdentifier: "ModeViewController") as! ModeViewController
        self.navigationController?.pushViewController(ModeViewController, animated: true)
        
    }
    
    
    
}

