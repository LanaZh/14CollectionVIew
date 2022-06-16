//
//  AlbomCollectionViewCell.swift
//  14CollectionView
//
//  Created by Надежда Жукова on 16.06.2022.
//

import UIKit

class AlbomCollectionViewCell: UICollectionViewCell {
    
    static let refisterCell = "AlbomCollectionViewCell"
    
    let albomImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .green
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    let nubmerPhoto: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(albomImageView)
        addSubview(nubmerPhoto)
        
        //расположение ячеек
        albomImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        albomImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        albomImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        albomImageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        nubmerPhoto.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        nubmerPhoto.topAnchor.constraint(equalTo: topAnchor, constant: 240).isActive = true
        nubmerPhoto.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    
    }
    override func layoutSubviews() {
         super.layoutSubviews()
        self.layer.cornerRadius = 25
        self.layer.shadowRadius = 25
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
