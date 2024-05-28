//
//  SearchViewController.swift
//  RestaurantApp
//
//  Created by 심소영 on 5/28/24.
//

import UIKit

class SearchViewController: UIViewController,UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {

    
    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var tableView: UITableView!
    
    let list = RestaurantList.restaurantArray
    
    var filteredList: [Restaurant] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTableView()
        configureView("검색 화면")
        
    }
    
    
    func setTableView(){
        tableView.rowHeight = 150
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        let xib = UINib(nibName: SearchTableViewCell.identifier, bundle: nil)
        tableView.register(xib, forCellReuseIdentifier: SearchTableViewCell.identifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SearchTableViewCell.identifier, for: indexPath) as! SearchTableViewCell
        let data = filteredList[indexPath.row]
        cell.setLabelData(data: data)
        
        return cell
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        var searchList: [Restaurant] = []
        for item in list {
            if item.name.contains(searchBar.text!) || item.category.description.contains(searchBar.text!){
                searchList.append(item)
            }
        }
        filteredList = searchList
        tableView.reloadData()
    }
    
}
