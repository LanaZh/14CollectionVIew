//
//  AlbomCollectionView.swift
//  14CollectionView
//
//  Created by Надежда Жукова on 16.06.2022.
//

import UIKit

class AlbomCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var cells = [InfoAlbom]()

    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        delegate = self
        dataSource = self
        register(AlbomCollectionViewCell.self, forCellWithReuseIdentifier: AlbomCollectionViewCell.refisterCell)
        
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = Constrain.albomLine
        contentInset = UIEdgeInsets(top: 0, left: Constrain.leftDistance, bottom: 0, right: Constrain.rightDistance)
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: AlbomCollectionViewCell.refisterCell, for: indexPath) as! AlbomCollectionViewCell
        cell.albomImageView.image = cells[indexPath.row].image
        cell.nubmerPhoto.text = cells[indexPath.row].name
        return cell
    }
    
    func set(cells: [InfoAlbom]) {
        self.cells = cells
    }
}

extension AlbomCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constrain.albomWidth, height: frame.height * 0.8)
    }
}

struct Constrain {
    static let leftDistance: CGFloat = 15
    static let rightDistance: CGFloat = 15
    static let albomLine: CGFloat = 10
    static let albomWidth = (UIScreen.main.bounds.width - Constrain.leftDistance - Constrain.rightDistance - (Constrain.albomLine / 4) / 2)
    
}
