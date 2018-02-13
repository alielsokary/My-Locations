//
//  Location+CoreDataClass.swift
//  MyLocations
//
//  Created by Ali on 2/8/18.
//  Copyright © 2018 mag. All rights reserved.
//

import Foundation
import CoreData
import MapKit

@objc(Location)
 class Location: NSManagedObject, MKAnnotation {

    var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2DMake(latitude, longitude)
    }

    var title: String? {
        if locationDescription.isEmpty {
            return "(No Description)"
        } else {
            return locationDescription
        }
    }

    var subtitle: String? {
        return category
    }
}
