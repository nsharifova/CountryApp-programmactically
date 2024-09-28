//
//  CustomCityViewCell.swift
//  CountryApp-Pr
//
//  Created by Nurluay Sharifova on 30.09.24.
//

import UIKit

class CustomCityViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityImageLabel: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(data: CityData) {
        cityImageLabel.image = UIImage(named: data.image)
        cityLabel.text = data.name
    }
}
