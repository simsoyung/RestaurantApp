//
//  Extension+.swift
//  RestaurantApp
//
//  Created by 심소영 on 5/28/24.
//

import UIKit

extension UIViewController {
    
    func configureView(_ title: String){
        
        navigationItem.title = title
        view.backgroundColor = .white
    }
}
    


extension UILabel {
    
    func setNameLabel(){
        self.font = .boldSystemFont(ofSize: 15)
        self.textAlignment = .left
        self.textColor = .darkGray
        self.numberOfLines = 0
    }

    
    func setSubLabel(){
        self.font = .boldSystemFont(ofSize: 13)
        self.textAlignment = .left
        self.textColor = .darkGray
        self.numberOfLines = 0
    }
    
    func setPriceLabel(){
        self.font = .systemFont(ofSize: 10, weight: .regular)
        self.textAlignment = .left
        self.textColor = .darkGray
        self.numberOfLines = 0
    }
    
}
    

