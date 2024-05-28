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

extension UIButton {
    
    func setButton(title: String, color: UIColor){
        self.setTitle(title, for: .normal)
        self.backgroundColor = color
        self.tintColor = .darkGray
        self.titleLabel?.font = .systemFont(ofSize: 14, weight: .bold)
        self.layer.cornerRadius = 10
    }
    
}
    
    extension UILabel {
        
        func setNameLabel(){
            self.font = .boldSystemFont(ofSize: 16)
            self.textAlignment = .left
            self.textColor = .darkGray
            self.numberOfLines = 0
        }
        
        
        func setSubLabel(){
            self.font = .boldSystemFont(ofSize: 14)
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
        
        func setHomeNameLabel(){
            self.font = .systemFont(ofSize: 17, weight: .heavy)
            self.textAlignment = .left
            self.textColor = .darkGray
            self.numberOfLines = 0
        }
        
        func setHomeSubLabel(){
            self.font = .systemFont(ofSize: 14, weight: .medium)
            self.textAlignment = .left
            self.textColor = .systemGray3
            self.numberOfLines = 2
        }
        
        func setHomePriceLabel(){
            self.font = .systemFont(ofSize: 13, weight: .regular)
            self.textAlignment = .left
            self.textColor = .gray
            self.numberOfLines = 0
        }
    }
    
