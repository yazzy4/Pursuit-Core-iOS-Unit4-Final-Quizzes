//
//  SearchCollectionViewCell.swift
//  Quizzes
//
//  Created by Yaz Burrell on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    var setView = [Quiz]()
    
    public lazy var addButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        return button
    }()
    
    public lazy var searchQuizLabel: UILabel = {
        let label = UILabel()
        label.text = "Quizes"
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
    addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: -150).isActive = true
       addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -900).isActive = true
      addButton.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, constant: 0).isActive = true
    addButton.leadingAnchor.constraint(equalTo:safeAreaLayoutGuide .leadingAnchor, constant: 300).isActive = true
    addButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -800).isActive = true
    }
    func addQuizName(){
            addSubview(searchQuizLabel)
            searchQuizLabel.topAnchor.constraint(equalTo: addButton.bottomAnchor).isActive = true
            searchQuizLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
            searchQuizLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
            safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        }
    
    

    
}
