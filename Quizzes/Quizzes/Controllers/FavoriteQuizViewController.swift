//
//  ViewController.swift
//  Quizzes
//
//  Created by Alex Paul on 1/31/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class FavoriteQuizViewController: UIViewController {

    var quizInfo = [Quiz]()
    var favoriteView = FavoriteView()
//        didSet{
//            DispatchQueue.main.async {
//                self.favoriteView = self
//            }
//        }
//

  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(favoriteView)
    navigationItem.title = "My Quizzes"
    view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    
  }


}


