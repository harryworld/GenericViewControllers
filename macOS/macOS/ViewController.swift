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

class BaseViewController: NSViewController {
    
    @IBOutlet var collectionView: NSCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

class ReminderViewController: BaseViewController, GenericListProtocol {
    
    typealias T = Reminder
    
    var dataSource: DataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reload()
        
        dataSource = DataSource()
        collectionView.dataSource = dataSource
    }
    
}
