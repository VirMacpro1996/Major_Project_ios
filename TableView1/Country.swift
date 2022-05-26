//
//  Country.swift
//  TableView1
//
//  Created by Vir Davinder Singh on 2022-02-25.
//

import Foundation
class Country{
    init(isocode :String , name : String , image : String)
    {
        self.name = name
        self.isoCode = isocode
        self.image = image
    }
    var isoCode: String
    var name: String
    var image : String
}




