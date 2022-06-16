//
//  RulesVC.swift
//  CardWorkout-Programmatic
//
//  Created by Talha Batuhan Irmalı on 16.06.2022.
//

import UIKit

class RulesVC: UIViewController {
    
    let titleLabeL = UILabel()
    let rulesLabel = UILabel()
    let exerciseLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        configureTitleLabel()
        configureRulesLabel()
        configureExerciseLabel()
    }
    
    func configureTitleLabel() {
        view.addSubview(titleLabeL)
        titleLabeL.translatesAutoresizingMaskIntoConstraints = false
        titleLabeL.text = "Rules"
        titleLabeL.font = .systemFont(ofSize: 40, weight: .bold)
        titleLabeL.textAlignment = .center
        
        NSLayoutConstraint.activate([
            titleLabeL.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant:60 ),
            titleLabeL.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            titleLabeL.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
        ])
        
    }
    
    func configureRulesLabel() {
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of exercise you do \n\nJ = 11, Q = 12, K = 13 , A = 14"
        rulesLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.lineBreakMode = .byWordWrapping
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabeL.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    func configureExerciseLabel() {
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false
        exerciseLabel.text = "♠️ = Push-ups\n\n♥️ = Sit-up\n\n ♣️ = Burpees\n\n ♦️ = Jumping Jacks "
        exerciseLabel.font = .systemFont(ofSize: 19, weight: .semibold)
        exerciseLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 60),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}
