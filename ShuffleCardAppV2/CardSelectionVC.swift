//
//  CardSelectionVC.swift
//  ShuffleCardAppV2
//
//  Created by Никита Швец on 10.11.2022.
//

import UIKit

class CardSelectionVC: UIViewController {

    let cardImageView = UIImageView()
    let stopButton = SCAButton(backgroundColor: .systemRed, title: "Stop!")
    let resetButton = SCAButton(backgroundColor: .systemGreen, title: "Reset")
    let rulesButton = SCAButton(backgroundColor: .systemBlue, title: "Rules ")
    
    var timer: Timer!
    let myDeck = Deck.valuesOfCards
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
        startTimer()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomCard() {
        cardImageView.image = myDeck.randomElement() ?? UIImage(named: "AD")
    }
    
}
