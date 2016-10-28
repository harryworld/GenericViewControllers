//
//  ViewController.swift
//  iOS
//
//  Created by Harry Ng on 27/10/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

protocol GenericListProtocol {
    associatedtype T: ListType
    
    func reload()
}

extension GenericListProtocol {
    
    func reload() {
        print("reload: \(T.self)")
    }
}

// ==========================================================
// NOTE: https://forums.developer.apple.com/thread/20772
// From Apple DTS, Touch subclass to make it available to ObjC runtime
// Use `main.swift` instead of @NSApplicationMain
// ==========================================================

class BaseViewController<G>: UICollectionViewController {
    
    var dataSource: DataSource<G>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = DataSource()
        collectionView?.dataSource = dataSource
    }
    
}

class ReminderViewController: BaseViewController<Label>, GenericListProtocol {
    
    typealias T = Reminder
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reload()
    }
    
}
