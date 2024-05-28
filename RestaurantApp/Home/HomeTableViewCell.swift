//
//  HomeTableViewCell.swift
//  RestaurantApp
//
//  Created by 심소영 on 5/28/24.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet var homeImage: UIImageView!
    @IBOutlet var homeNameLabel: UILabel!
    @IBOutlet var homeSubLabel: UILabel!
    @IBOutlet var homepriceLabel: UILabel!
    
    static let identifier = "HomeTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureHomeLayout()
    }

    func configureHomeLayout(){
        homeNameLabel.setHomeNameLabel()
        homeSubLabel.setHomeSubLabel()
        homepriceLabel.setHomePriceLabel()
    }
    
    func congigureHomeCell(data: Restaurant){
        homeNameLabel.text = data.name
        homeSubLabel.text = data.address
        homepriceLabel.text = data.infoCategory
        let url = URL(string: data.image)
        homeImage.kf.setImage(with: url)
        homeImage.layer.cornerRadius = 15
        homeImage.contentMode = .scaleAspectFill
        
    }
    
}
