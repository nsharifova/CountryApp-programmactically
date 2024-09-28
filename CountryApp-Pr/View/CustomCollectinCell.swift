//
//  CustomCollectinCell.swift
//  CountryApp-Pr
//
//  Created by Nurluay Sharifova on 29.09.24.
//

import UIKit

class CustomCollectinCell: UIView {
     static let identifier = "CustomCollectinCell"
    var imageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    var textLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.contentMode = .scaleAspectFit
        return textLabel
    }()
    
   

}
