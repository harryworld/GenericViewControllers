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

class BaseViewController: UICollectionViewController {
    
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
        collectionView?.dataSource = dataSource
    }
    
}
