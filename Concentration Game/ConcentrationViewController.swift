//
//  ConcentrationViewController.swift
//  Concentration Game
//
//  Created by Иван Смяткин on 06.11.2020.
//

import UIKit

class ConcentrationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createNewGame()
}

    var game: Game!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBAction func newGameButton() {
        createNewGame()
    }
    
    @IBAction func selectCard(_ sender: UIButton) {
        game.flipCount += 1
        updateViewFromModel()
    }
    
    func updateViewFromModel() {
        scoreLabel.text = "Score: \(game.score)"
        flipCountLabel.text = "Flips: \(game.flipCount)"
    }
    
    func createNewGame() {
        game = Game(withPairsOfCards: 6)
        updateViewFromModel()
    }
}
