//
//  Data.swift
//  FinanceApp
//
//  Created by LVMM on 11/05/2023.
//

import Foundation

let filters: [String] = ["1 Year", "6 Months", "Last Month", "This Week"]
let templetes:[Templete] = [
    Templete(name: "Insurance", amount: "$200.80", serialNumber: "11189", colorPrimary: "OrangePrimary", colorSecondary: "OrangeSecondary"),
    Templete(name: "Tax", amount: "$1,750", serialNumber: "11190", colorPrimary: "BluePrimary", colorSecondary: "BlueSecondary"),
]



struct Templete {
    let name: String
    let amount: String
    let serialNumber: String
    let colorPrimary: String
    let colorSecondary: String
}
