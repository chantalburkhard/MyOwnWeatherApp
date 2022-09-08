//
//  RightNowView.swift
//  Weather
//
//  Created by Chantal Burkhard
//

import UIKit

class RightNowView: FancyView {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    
    func clear() {
        dateLabel.text = ""
        cityLabel.text = ""
        weatherLabel.text = ""
        tempLabel.text = ""
        weatherImage.image = nil
    }
    
    func updateView(currentWeather: Current, city: String) {
        cityLabel.text = city
        dateLabel.text = Date.getTodaysDate()
        weatherLabel.text = currentWeather.weather[0].description.capitalized
        tempLabel.text = "\(Int(currentWeather.temp))°C"
        weatherImage.image = UIImage(named: currentWeather.weather[0].icon)
    }
}
