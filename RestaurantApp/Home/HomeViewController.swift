//
//  HomeViewController.swift
//  RestaurantApp
//
//  Created by 심소영 on 5/28/24.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet var homeTableView: UITableView!
    
    @IBOutlet var priceUpButton: UIButton!
    @IBOutlet var priceDownButton: UIButton!
    @IBOutlet var categoryButton: UIButton!
    
    let homeList = RestaurantList.restaurantArray
    var homeFilteredList: [Restaurant] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView("홈 화면")
        setHomeView()
        priceUpButton.setButton(title: "월급날💵", color: UIColor(red: 133/255, green: 209/255, blue: 196/255, alpha: 1.0))
        priceDownButton.setButton(title: "가성비👍🏻", color: UIColor(red: 255/255, green: 170/255, blue: 175/255, alpha: 1.0))
        categoryButton.setButton(title: "한식만🇰🇷", color: UIColor(red: 249/255, green: 223/255, blue: 167/255, alpha: 1.0))
        
        priceUpButton.addTarget(self, action: #selector(priceUpButtonTapped), for: .touchUpInside)
        priceDownButton.addTarget(self, action: #selector(priceDownButtonTapped), for: .touchUpInside)
        categoryButton.addTarget(self, action: #selector(categoryButtonTapped), for: .touchUpInside)
    }
    
    func setHomeView(){
        homeTableView.rowHeight = 150
        homeTableView.dataSource = self
        homeTableView.delegate = self
        let xib = UINib(nibName: HomeTableViewCell.identifier, bundle: nil)
        homeTableView.register(xib, forCellReuseIdentifier: HomeTableViewCell.identifier)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeFilteredList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = homeTableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as! HomeTableViewCell
        
        let data = homeFilteredList[indexPath.row]
        cell.congigureHomeCell(data: data)
        
        return cell
    }
    

    @objc
    func priceUpButtonTapped(){
        var priceUp: [Restaurant] = []
        for item in homeList {
            if item.price >= 5000 {
                priceUp.append(item)
            }
        }
        homeFilteredList = priceUp
        homeTableView.reloadData()
    }
    
    @objc
    func priceDownButtonTapped(){
        var priceDown: [Restaurant] = []
        for item in homeList {
            if item.price <= 5000 {
                priceDown.append(item)
            }
        }
        homeFilteredList = priceDown
        homeTableView.reloadData()
    }
    
    @objc
    func categoryButtonTapped(){
        var category: [Restaurant] = []
        for item in homeList {
            if item.category == "한식"{
                category.append(item)
            }
        }
        homeFilteredList = category
        homeTableView.reloadData()
    }
}
