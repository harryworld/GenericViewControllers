//
//  DataSource.swift
//  macOS
//
//  Created by Harry Ng on 27/10/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import Cocoa

class DataSource<T>: NSObject, NSCollectionViewDataSource {
    
    override init() {
        super.init()
        
        print("DataSource: \(T.self)")
    }

    func collectionView(_ collectionView: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        
        return collectionView.makeItem(withIdentifier: "\(ViewItem.self)", for: indexPath)
    }
}
