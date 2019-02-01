//
//  SearchViewController.swift
//  Quizzes
//
//  Created by Yaz Burrell on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    public var searchView = SearchView()
    public var quizInfo = [Quiz]() {
        didSet{
            DispatchQueue.main.async {
                self.searchView.searchQuizCollection.reloadData()
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
         navigationItem.title = "Search Quizes"
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.addSubview(searchView)
        getQuizzes()
        searchView.searchQuizCollection.dataSource = self
        searchView.searchQuizCollection.delegate = self
        
        
    }
    

    func getQuizzes(){
        QuizAPIClient.quizSearch { (appError, results) in
            
            if let appError = appError {
                print("AppError: \(appError)")
            } else if let results = results {
                self.quizInfo = results
                
            }
        }
    }
}




extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return quizInfo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as! SearchCollectionViewCell
        let quiz = quizInfo[indexPath.row]
    
        cell.searchQuizLabel.text = quiz.quizTitle
        
        return cell
    }
    
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        <#code#>
//    }
    
    
}


