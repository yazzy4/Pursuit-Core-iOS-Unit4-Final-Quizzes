//
//  SearchCollectionViewCell.swift
//  Quizzes
//
//  Created by Yaz Burrell on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    
    public lazy var addButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
       button.setTitle(". . .", for: .normal)
        return button
    }()
    
    public lazy var searchQuizLabel: UILabel = {
        let label = UILabel()
        label.text = "Quizes"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .black
        label.isEnabled = true
        label.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        return label
    }()
    
    
    
    public func commonInit(){
        setAddButton()
        addQuizName()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
func setAddButton() {
        addSubview(addButton)
        addButton.translatesAutoresizingMaskIntoConstraints = false
    addButton.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
       addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5).isActive = true
      addButton.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
    }
    func addQuizName(){
            addSubview(searchQuizLabel)
        searchQuizLabel.translatesAutoresizingMaskIntoConstraints = false
        searchQuizLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        searchQuizLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        searchQuizLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -150).isActive = true
        searchQuizLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true

        }
    
    

    
}
