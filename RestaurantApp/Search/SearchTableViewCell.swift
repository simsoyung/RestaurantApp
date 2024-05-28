//
//  SearchTableViewCell.swift
//  RestaurantApp
//
//  Created by 심소영 on 5/28/24.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet var mainImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var subLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    
    static let identifier = "SearchTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureLabel()
    }

    func configureLabel(){
        nameLabel.setNameLabel()
        subLabel.setSubLabel()
        priceLabel.setPriceLabel()
    }
    
    func setLabelData(data: Restaurant){
        let url = URL(string: data.image)
        mainImage.kf.setImage(with: url)
        mainImage.contentMode = .scaleAspectFill
        mainImage.layer.cornerRadius = 20
        nameLabel.text = data.name
        subLabel.text = data.address
        priceLabel.text = data.infoPrice
        
    }
    
}
