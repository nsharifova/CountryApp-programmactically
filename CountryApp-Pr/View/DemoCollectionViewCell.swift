//
//  DemoCollectionViewCell.swift
//  CountryApp-Pr
//
//  Created by Nurluay Sharifova on 28.09.24.
//

import UIKit

class DemoCollectionViewCell: UICollectionViewCell {
    static let identifier = "DemoCollectionViewCell"
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
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(data: CountryData) {
        imageView.image = UIImage(named: data.image)
        textLabel.text = data.name
    }
    func setupView() {
        contentView.addSubview(textLabel)
        contentView.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 150),
            imageView.widthAnchor.constraint(equalToConstant: 170),
            textLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 1),
            textLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
        ])
        
        
    }
}
