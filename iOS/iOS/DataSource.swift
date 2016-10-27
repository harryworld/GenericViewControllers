//
//  DataSource.swift
//  iOS
//
//  Created by Harry Ng on 27/10/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import UIKit

class DataSource: NSObject, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        return cell
    }
}
