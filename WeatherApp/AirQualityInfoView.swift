//
//  AirQualityInfoView.swift
//  WeatherApp
//
//  Created by wudan on 2021/11/10.
//

import SwiftUI

struct AirQualityInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                HStack{
                    Image(systemName: "aqi.low")
                        .foregroundColor(.white)
                    Text("空气质量")
                        .foregroundColor(.white.opacity(0.8))
                        .font(.system(size: 12))
                }
                
                Text("46 - 优")
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .medium))
                    .padding(.top, 5)
                
                Text("当前AQI（CN）为 46")
                    .foregroundColor(.white)
                    .font(.system(size: 16))
                    .padding(.top, 8)
                
                ProgressView(value: 0.1)
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    .padding(.top, 8)
                Divider().background(.white).opacity(1).padding(.top, 5)
                
                HStack(alignment: .center, spacing: nil) {
                    Text("查看更多").foregroundColor(.white).font(.system(size: 14, weight: .medium))
                    Spacer()
                    Image(systemName: "chevron.right").foregroundColor(.white)
                }.padding(.top, 10)
                
            }.padding(.leading, 15).padding(.trailing, 15).padding(.bottom, 10).padding(.top, 10)
        }.background(Color(.sRGB, white: 1, opacity: 0.15)).cornerRadius(10).padding(.leading, 15).padding(.trailing, 15)
    }
}

struct AirQualityInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AirQualityInfoView()
    }
}
