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
        layout.itemSize = CGSize.init(width: 350, height: 500)
        layout.sectionInset = UIEdgeInsets.init(top: 20, left: 10, bottom: 20, right: 10)
        layout.scrollDirection = .vertical
        
        let cv = UICollectionView.init(frame: self.bounds, collectionViewLayout: layout)
        cv.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        return cv
    }()
    
    func setupCellViews(){
    self.searchQuizCollection.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: "QuizCell")
        setUpQuizCollectionView()
    }
    
   
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        setupCellViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        setupCellViews()
        
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
