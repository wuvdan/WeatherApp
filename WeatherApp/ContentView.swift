//
//  ContentView.swift
//  WeatherApp
//
//  Created by wudan on 2021/11/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .center){
            Image("").background(.blue.opacity(0.9))
            ScrollView(.vertical, showsIndicators: false) {
                HeaderInfoView()
                AirQualityInfoView()
                TodayWeatherInfoView()
                WeekWeatherInfoView()
                AirQualityMapInfoView()
                BlockInfoView()
                BottomInfoView()
                Image("")
                    .frame(width: UIScreen.main.bounds.width, height: 34)
                    .background(.blue.opacity(0.9))
            }
            .background(.blue.opacity(0.9))
        }
        .background(.blue.opacity(0.9))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
