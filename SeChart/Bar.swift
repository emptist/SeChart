//
//  Bar.swift
//  SeChart
//
//  Created by jk on 2020/10/16.
//  Copyright © 2020 ssl. All rights reserved.
//

import SwiftUI
import Charts

struct Bar: UIViewRepresentable {
    var entries: Array<BarChartDataEntry>
    
    func makeUIView(context: Context) -> BarChartView {
        let chart = BarChartView()
        chart.data = addData()
        return chart
    }
    
    func addData() -> BarChartData {
        let data = BarChartData()
        let dataset = BarChartDataSet(entries: entries)
        dataset.colors = [NSUIColor.green]
        dataset.label = "MyData"
        data.addDataSet(dataset)
        return data
    }
    
    func updateUIView(_ uiView: BarChartView, context: Context) {
        
    }

    typealias UIViewType = BarChartView
        
}

struct Bar_Previews: PreviewProvider {
    static var previews: some View {
        Bar(entries: [
            BarChartDataEntry(x: 11, y: 12),
            BarChartDataEntry(x: 12, y: 15),
            BarChartDataEntry(x: 13, y: 16),
            BarChartDataEntry(x: 14, y: 12)
        ])
    }
}
