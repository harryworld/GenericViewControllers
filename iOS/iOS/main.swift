//
//  main.swift
//  iOS
//
//  Created by Harry Ng on 28/10/2016.
//  Copyright © 2016 STAY REAL LIMITED. All rights reserved.
//

import UIKit

print(ReminderViewController.self)

// The following is required because there's an impedence mismatch between
// `CommandLine` and `UIApplicationMain` <rdar://problem/25693546>.
let argv = UnsafeMutableRawPointer(CommandLine.unsafeArgv).bindMemory(
    to: UnsafeMutablePointer<Int8>.self,
    capacity: Int(CommandLine.argc)
)
UIApplicationMain(CommandLine.argc, argv, nil, NSStringFromClass(AppDelegate.self))
