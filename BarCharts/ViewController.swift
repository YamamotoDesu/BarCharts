//
//  ViewController.swift
//  BarCharts
//
//  Created by 山本響 on 2022/03/06.
//

import UIKit
import Charts

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createCharts()
    }
    
    private func createCharts() {
        let barChart = BarChartView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width))
        
        let xAxis = barChart.xAxis
        let yAxis = barChart.rightAxis
        
        let legend = barChart.legend
        
        var entries = [BarChartDataEntry]()
        var entries2 = [BarChartDataEntry]()
        for x in 0..<10 {
            entries.append(
                BarChartDataEntry(
                    x: Double(x),
                    y: Double.random(in: 0...30)
                )
            )
            entries2.append(
                BarChartDataEntry(
                    x: Double(x),
                    y: Double.random(in: 0...30)
                )
            )
        }
        
        let set = BarChartDataSet(entries: entries, label: "Cost")
//        set.colors = ChartColorTemplates.joyful()
        set.colors = [
            NSUIColor(cgColor: UIColor.systemBlue.cgColor),
            NSUIColor(cgColor: UIColor.systemPink.cgColor),
            NSUIColor(cgColor: UIColor.systemGreen.cgColor),
            NSUIColor(cgColor: UIColor.systemRed.cgColor),
            NSUIColor(cgColor: UIColor.systemPurple.cgColor),
            NSUIColor(cgColor: UIColor.systemOrange.cgColor),
        ]
        
        let set2 = BarChartDataSet(entries: entries2, label: "Cost")
//        set.colors = ChartColorTemplates.joyful()
        set2.colors = [
            NSUIColor(cgColor: UIColor.systemBlue.cgColor),
            NSUIColor(cgColor: UIColor.systemPink.cgColor),
            NSUIColor(cgColor: UIColor.systemGreen.cgColor),
            NSUIColor(cgColor: UIColor.systemRed.cgColor),
            NSUIColor(cgColor: UIColor.systemPurple.cgColor),
            NSUIColor(cgColor: UIColor.systemOrange.cgColor),
        ]
        let data = BarChartData(dataSets: [set, set2])
        
        barChart.data = data
        
        view.addSubview(barChart)
        barChart.center = view.center
    }


}

