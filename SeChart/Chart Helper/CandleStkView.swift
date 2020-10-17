//
//  CandleStkView.swift
//  SeChart
//
//  Created by jk on 2020/10/16.
//  Copyright © 2020 ssl. All rights reserved.
//

import SwiftUI
import Charts

struct CandleStkView: UIViewRepresentable {
    var entries: Array<CandleChartDataEntry>
    func makeUIView(context: Context) -> CandleStickChartView {
        let chart = CandleStickChartView()
        chart.data = addData()
        return chart
    }
    
    func addData() -> CandleChartData {
        let data = CandleChartData()
        let dataset = CandleChartDataSet(entries: entries)
        dataset.colors = [NSUIColor.green]
        dataset.label = "MyData"
        data.addDataSet(dataset)
        return data
    }
    
    func updateUIView(_ uiView: CandleStickChartView, context: Context) {
        uiView.data = addData()
    }
    
    typealias UIViewType = CandleStickChartView
    
    
}

struct CandleStkView_Previews: PreviewProvider {
    static var previews: some View {
        CandleStkView(entries: [
            CandleChartDataEntry(x: 1, shadowH: 12, shadowL: 3, open: 4, close: 11),
            CandleChartDataEntry(x: 2, shadowH: 10, shadowL: 1, open: 11, close: 2.1),
            CandleChartDataEntry(x: 3, shadowH: 11, shadowL: 1, open: 1.5, close: 9.1),
            CandleChartDataEntry(x: 4, shadowH: 11, shadowL: 5, open: 9, close: 10.1),
            CandleChartDataEntry(x: 5, shadowH: 12, shadowL: 10.3, open: 11.4, close: 11),
        ])
    }
}
