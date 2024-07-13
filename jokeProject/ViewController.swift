//
//  ViewController.swift
//  jokeProject
//
//  Created by Владислав Соколов on 13.07.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet weak var jokeLabel: UILabel!
    
    private let joke: String = "Why did the chicken get a penalty?"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        jokeLabel.text = joke
        
        // Настройка границы для лейбла с текстом шутки сверху
        let topBorder = CALayer()
        topBorder.backgroundColor = UIColor.black.cgColor
        topBorder.frame = CGRect(x: 0, y: 0, width: jokeLabel.frame.size.width, height: 2)
        jokeLabel.layer.addSublayer(topBorder)

        // Настройка границы для лейбла с текстом шутки снизу
        let bottomBorder = CALayer()
        bottomBorder.backgroundColor = UIColor.black.cgColor
        bottomBorder.frame = CGRect(x: 0, y: jokeLabel.frame.size.height - 2, width: jokeLabel.frame.size.width, height: 2)
        jokeLabel.layer.addSublayer(bottomBorder)
    }
    
    @IBAction private func showPuchline(_ sender: Any) {
        let alert = UIAlertController(title: "Punchline",
                                      message: "For fowl play",
                                      preferredStyle: .alert) // .alert или .actionSheet
        // создаем действие кнопки
        let action = UIAlertAction(title: "Ok", style: .default) { _ in
                // закроется автоматически, т.к. не выполняет действия
        }
        // создаем кнопку
        alert.addAction(action)
        // показываем алерт на экран
        self.present(alert, animated: true, completion: nil)
    }
    
}

