//
//  Functions.swift
//  MyLocations
//
//  Created by Ali on 2/6/18.
//  Copyright © 2018 mag. All rights reserved.
//

import Foundation
import Dispatch

func afterDelay(_ seconds: Double, closure: @escaping () -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: closure)
}

let applicationDocumentsDirectory: URL = {
    let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
    return paths[0]
}()

let MyManagedObjectContextSaveDidFailNotification = Notification.Name("MyManagedObjectContextSaveDidFailNotification")

func fatalCoreDataError(_ error: Error) {
      print("*** Fatal error: \(error)")
    NotificationCenter.default.post(name: MyManagedObjectContextSaveDidFailNotification, object: nil)
}
    
