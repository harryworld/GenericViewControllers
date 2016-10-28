//
//  ViewController.swift
//  macOS
//
//  Created by Harry Ng on 27/10/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

class BaseViewController<G>: NSViewController {
    
    @IBOutlet var collectionView: NSCollectionView!
    
    var dataSource: DataSource<G>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = DataSource<G>()
        collectionView.dataSource = dataSource
    }
    
}

class ReminderViewController: BaseViewController<Reminder>, GenericListProtocol {
    
    typealias T = Reminder
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reload()
    }
    
}
