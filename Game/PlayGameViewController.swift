//
//  PlayGameViewController.swift
//  Game
//
//  Created by Ayush Patel on 09/01/23.
import UIKit
class PlayGameViewController: UIViewController {
    @IBOutlet weak var outlet2: UILabel!
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var outlet: UILabel!
    @IBOutlet weak var yes: UIButton!
    @IBOutlet weak var no: UIButton!
    @IBOutlet weak var spelling: UILabel!
    @IBOutlet weak var instruction: UILabel!
    var nameLabel: String = ""
    
    var timerCount: Double = 10
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadname()
        configureTimerprogressView()
        outlet.layer.cornerRadius = 15
        outlet.layer.masksToBounds = true
        outlet2.layer.cornerRadius = 23
        outlet2.layer.masksToBounds = true
        instruction.layer.cornerRadius = 17
        instruction.layer.masksToBounds = true
    }
    private func loadname (){
        let arrOfName: [String] = ["Sunshine",
                                   "Eternally",
                                   "Sight",
                                   "Gum",
                                   "Crazy",
                                   "Realize",
                                   "Whisper",
                                   "Knight",
                                   "Moonlight",
                                   "Comfort",
                                   "Snapped",
                                   "Fairy",
                                   "Fear"]
        nameLabel.append(arrOfName.randomElement() ?? "")
        spelling.text = nameLabel
    }
    private func configureTimerprogressView() {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        progressbar.trackTintColor = .yellow
        progressbar.progressTintColor = .black
        progressbar.setProgress(1, animated: true)
        }
        @objc
        func updateTime(){
            if timerCount > 0{
                timerCount = timerCount - 1
                progressbar.setProgress(Float(timerCount/10), animated: true)
            }else{
                displayValidation(massage: "game over")
                timer.invalidate()
            }
        }
    @IBAction func noButton(_ sender: UIButton) {
        let playGameViewController = storyboard?.instantiateViewController(withIdentifier: "PlayGameViewController") as! PlayGameViewController
        navigationController?.pushViewController(playGameViewController, animated: false)
    }
    
    @IBAction func yesButton(_ sender: UIButton) {
        let playGameViewController = storyboard?.instantiateViewController(withIdentifier: "PlayGameViewController") as! PlayGameViewController
        navigationController?.pushViewController(playGameViewController, animated: false)
    }
    private func displayValidation(massage: String){
          let alert: UIAlertController = UIAlertController(title: "Error", message: massage, preferredStyle: .alert)
          let okButten: UIAlertAction = UIAlertAction(title: "ok", style: .default)
          let cancelButten: UIAlertAction = UIAlertAction(title: "cancel", style: .destructive)
          alert.addAction(okButten)
          alert.addAction(cancelButten)
          present(alert, animated: true, completion: nil)
      }
}
