//
//  TodayWeatherInfoView.swift
//  WeatherApp
//
//  Created by wudan on 2021/11/11.
//

import SwiftUI

struct TodayWeatherInfoView: View {
    var body: some View {
        VStack{
            HStack{
                Text("今日将持续晴天").foregroundColor(.white).font(.system(size: 14, weight: .medium))
                Spacer()
            }.padding(.top, 10).padding(.leading, 15)
            Divider().background(.white).opacity(1).padding(.leading, 10)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .center, spacing: 30) {
                    ForEach(0..<23) {_ in
                        VStack(alignment: .center, spacing: 10){
                            Text("今天").foregroundColor(.white).font(.system(size: 14, weight: .medium))
                            Image(systemName: "sun.max.fill").renderingMode(.original)
                            Text("15°").foregroundColor(.white).font(.system(size: 14, weight: .medium))
                        }
                    }
                }.padding(.leading, 15).padding(.trailing, 15)
            }.padding(.bottom, 10)
        }.background(Color(.sRGB, white: 1, opacity: 0.15)).cornerRadius(10).padding(.leading, 15).padding(.trailing, 15)
    }
}

struct TodayWeatherInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TodayWeatherInfoView()
    }
}
