//
//  QuizView.swift
//  Quizzes
//
//  Created by Yaz Burrell on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class FavoriteView: UIView {

    public lazy var myQuizView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 20, height: 300)
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 10, bottom: 20, right: 10)
        layout.scrollDirection = .horizontal
        
        
        let cv = UICollectionView.init(frame: CGRect.zero, collectionViewLayout: layout)
        cv.register(FavoriteCollectionViewCell.self, forCellWithReuseIdentifier: "MyQuiz")
        cv.backgroundColor = .gray
        return cv
    }()
    
    override init(frame: CGRect){
        super.init(frame: UIScreen.main.bounds)
        self.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        commonInit()
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        setupCollectionView()
        
    }
    
    private func setupCollectionView () {
        addSubview(myQuizView)
        myQuizView.translatesAutoresizingMaskIntoConstraints = false
        myQuizView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        myQuizView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        myQuizView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
myQuizView.heightAnchor.constraint(equalTo:safeAreaLayoutGuide.heightAnchor, multiplier: 0.4).isActive = true
        myQuizView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
        
    }
    
}
