//
//  Seeds.swift
//  WhereIsMyApple
//
//  Created by Raymond Law on 1/8/18.
//  Copyright © 2018 Clean Swift LLC. All rights reserved.
//

@testable import WhereIsMyApple
import XCTest
import MapKit
import AddressBook
import Contacts

struct Seeds
{
  struct Stores
  {
    static let clarendon = Store(name: "Clarendon", address: "2700 Clarendon Boulevard, Arlington, VA 22201", phone: "(703) 236-7970", hours: "Mon - Sat 10:00 a.m. - 9:00 p.m., Sun 11:00 a.m. - 6:00 p.m.")
    static let pentagonCity = Store(name: "Pentagon City", address: "1100 South Hayes Street, Arlington, VA 22202", phone: "(703) 236-1550", hours: "Mon - Sat 10:00 a.m. - 9:30 p.m., Sun 11:00 a.m. - 6:00 p.m.")
    static let fairOaks = Store(name: "Fair Oaks", address: "11750 Fair Oaks, Fairfax, VA 22033", phone: "(703) 251-7400", hours: "Mon - Sat 10:00 a.m. - 9:30 p.m., Sun 11:00 a.m. - 6:00 p.m.")
    static let tysonsCorner = Store(name: "Tysons Corner", address: "1961 Chain Bridge Road, McLean, VA 22102", phone: "(703) 336-8450", hours: "Mon - Sat 10:00 a.m. - 9:30 p.m., Sun 11:00 a.m. - 7:00 p.m.")
    static let macArthurCenter = Store(name: "MacArthur Center", address: "300 Monticello Avenue, Norfolk, VA 23510", phone: "(757) 628-8400", hours: "Mon - Sat 10:00 a.m. - 9:00 p.m., Sun 11:00 a.m. - 6:00 p.m.")
    static let reston = Store(name: "Reston", address: "11949 Market Street, Reston, VA 20190", phone: "(571) 449-4800", hours: "Mon - Sat 10:00 a.m. - 9:00 p.m., Sun 11:00 a.m. - 6:00 p.m.")
    static let shortPumpTownCenter = Store(name: "Short Pump Town Center", address: "11800 W. Broad Street, Richmond, VA 23233", phone: "(804) 420-3000", hours: "Mon - Sat 10:00 a.m. - 9:00 p.m., Sun 11:00 a.m. - 6:00 p.m.")
    static let lynnhavenMall = Store(name: "Lynnhaven Mall", address: "701 Lynnhaven Parkway, Virginia Beach, VA 23452", phone: "(757) 306-2480", hours: "Mon - Sat 10:00 a.m. - 9:00 p.m., Sun 11:00 a.m. - 6:00 p.m.")
    static let potomacTownCenter = Store(name: "Potomac Town Center", address: "15100 Potomac Town Place, Woodbridge, VA 22191", phone: "(703) 986-2030", hours: "Mon - Sat 10:00 a.m. - 9:00 p.m., Sun 11:00 a.m. - 6:00 p.m.")
  }
  
  struct DisplayedStores
  {
    static let clarendon = List.DisplayedStore(name: "Clarendon", address: "2700 Clarendon Boulevard, Arlington, VA 22201")
    static let pentagonCity = List.DisplayedStore(name: "Pentagon City", address: "1100 South Hayes Street, Arlington, VA 22202")
    static let fairOaks = List.DisplayedStore(name: "Fair Oaks", address: "11750 Fair Oaks, Fairfax, VA 22033")
    static let tysonsCorner = List.DisplayedStore(name: "Tysons Corner", address: "1961 Chain Bridge Road, McLean, VA 22102")
    static let macArthurCenter = List.DisplayedStore(name: "MacArthur Center", address: "300 Monticello Avenue, Norfolk, VA 23510")
    static let reston = List.DisplayedStore(name: "Reston", address: "11949 Market Street, Reston, VA 20190")
    static let shortPumpTownCenter = List.DisplayedStore(name: "Short Pump Town Center", address: "11800 W. Broad Street, Richmond, VA 23233")
    static let lynnhavenMall = List.DisplayedStore(name: "Lynnhaven Mall", address: "701 Lynnhaven Parkway, Virginia Beach, VA 23452")
    static let potomacTownCenter = List.DisplayedStore(name: "Potomac Town Center", address: "15100 Potomac Town Place, Woodbridge, VA 22191")
  }
  
  static var address: CNPostalAddress
  {
    let address = CNMutablePostalAddress()
    address.street = "1961 Chain Bridge Road"
    address.city = "McLean"
    address.state = "VA"
    address.postalCode = "22102"
    return address
  }
  
  static var placemark: MKPlacemark
  {
    let location = CLLocationCoordinate2D(latitude: 38.917623, longitude: -77.222237)
    let placemark = MKPlacemark(coordinate: location, postalAddress: address)
    return placemark
  }
  
  static var location: CLLocation
  {
    let location = CLLocation(latitude: 38.917623, longitude: -77.222237)
    return location
  }
}
