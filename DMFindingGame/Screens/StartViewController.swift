//
//  StartViewController.swift
//  DMFindingGame
//
//  Created by David Ruvinskiy on 4/17/23.
//

import UIKit

/**
 1.1 Create the user interface. The app will have two screens: the start screen and the game screen. The start screen will be controlled by the `StartViewController`, and the game screes will be controlled by the `GameViewController`.  See the provided screenshots and video for how the UI should look. Feel free to customize the colors, font, etc.
 
 1.2 Create an IBOutlet for the high score label.
 */
class StartViewController: UIViewController {
    
    @IBOutlet weak var highScoreLabel: UILabel!
    
    
    let gameBrain = GameBrain.shared
    
    /**
     3.1 Update the `highScoreLabel`'s text to be the high score from the game brain.
     */
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("High Score: \(gameBrain.highScore)")
        highScoreLabel.text = "High Score: \(gameBrain.highScore)"
        
    }
    
    /**
     4.1 Transition the user to the `GameViewController` when the start button is tapped.
     */
    @IBAction func startButtonTapped(_ sender: UIButton) {
        let gameVc = storyboard!.instantiateViewController(withIdentifier: "GameViewController")
        navigationController?.pushViewController(gameVc, animated: true)
        
    }
   
}
