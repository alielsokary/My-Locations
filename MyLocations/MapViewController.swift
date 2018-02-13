//
//  MapViewController.swift
//  MyLocations
//
//  Created by Ali on 2/13/18.
//  Copyright © 2018 mag. All rights reserved.
//

import UIKit
import MapKit
import CoreData

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!

    var managedObjectContext: NSManagedObjectContext!
    var locations = [Location]()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateLocations()
    }

    @IBAction func showUser() {
        let region = MKCoordinateRegionMakeWithDistance(mapView.userLocation.coordinate, 1000, 1000)
        mapView.setRegion(mapView.regionThatFits(region), animated: true)
    }

    @IBAction func showLocations() {


    }

    func updateLocations() {
        mapView.removeAnnotations(locations)

        let entity = Location.entity()

        let fetchRequest = NSFetchRequest<Location>()
        fetchRequest.entity = entity

        locations = try! managedObjectContext.fetch(fetchRequest)
        mapView.addAnnotations(locations)
    }

}

extension MapViewController: MKMapViewDelegate {

}
