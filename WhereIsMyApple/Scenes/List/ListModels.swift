//
//  ListModels.swift
//  WhereIsMyApple
//
//  Created by Raymond Law on 1/8/18.
//  Copyright (c) 2018 Clean Swift LLC. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import MapKit

enum List
{
  struct DisplayedStore
  {
    var name: String
    var address: String
  }
  
  // MARK: Use cases
  
  enum FetchStores
  {
    struct Request
    {
    }
    struct Response
    {
      var stores: [Store]
    }
    struct ViewModel
    {
      var displayedStores: [DisplayedStore]
    }
  }
  
  enum LocateStore
  {
    class MapItem: MKMapItem {}
    struct Request
    {
      var name: String
      var address: String
    }
    struct Response
    {
      var name: String
      var coordinate: CLLocationCoordinate2D
      var addressDictionary: [String : Any]?
    }
    struct ViewModel
    {
      var name: String
      var coordinate: CLLocationCoordinate2D
      var addressDictionary: [String : Any]?
    }
  }
  enum LocateStoreAlt
  {
    struct ViewModel
    {
      var mapItem: MKMapItem
    }
  }
}

struct Store
{
  var name: String
  var address: String
  var phone: String
  var hours: String
}