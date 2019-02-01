//
//  SearchView.swift
//  Quizzes
//
//  Created by Yaz Burrell on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchView: UIView {
    
    public lazy var searchQuizCollection: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 400, height: 800)
        layout.sectionInset = UIEdgeInsets.init(top: 50, left:10, bottom: 50, right: 10)
        layout.scrollDirection = .vertical
        
        let cv = UICollectionView.init(frame: CGRect.zero, collectionViewLayout: layout)
        cv.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: "QuizCell")
        cv.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return cv
    }()
    
   
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    public func commonInit(){
        setUpQuizCollectionView()
        
    }
    
    func setUpQuizCollectionView(){
        addSubview(searchQuizCollection)
        searchQuizCollection.translatesAutoresizingMaskIntoConstraints = false
        searchQuizCollection.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        searchQuizCollection.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        searchQuizCollection.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        searchQuizCollection.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        searchQuizCollection.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.4).isActive = true
        
    }
    
    

}
