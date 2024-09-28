//
//  CustomCollectionViewCell.swift
//  CountryApp-Pr
//
//  Created by Nurluay Sharifova on 29.09.24.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(data: CountryData) {
        countryImage.image = UIImage(named: data.image)
        countryLabel.text = data.name
    }
}
