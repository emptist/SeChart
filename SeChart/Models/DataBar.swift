//
//  DataBar.swift
//  SeChart
//
//  Created by jk on 2020/10/16.
//  Copyright © 2020 ssl. All rights reserved.
//

import Foundation

protocol DataBar {
    var id: Int {get}
    var date: Date { get set }
    var open: Double { get set }
    var high: Double { get set }
    var low: Double { get set }
    var close: Double { get set }
    var volumn: Double {get set}
    var count: Int {get set}
}

extension DataBar {
    var id: Int {
        count
    }
}

struct DataBarBase: DataBar, Codable, Equatable, Identifiable, Hashable {
    var id: Int {
        count
    }
    var date: Date
    var open: Double
    var high: Double
    var low: Double
    var close: Double
    var volumn: Double
    var count: Int
}
