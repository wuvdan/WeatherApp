//
//  WeekWeatherInfoView.swift
//  WeatherApp
//
//  Created by wudan on 2021/11/11.
//

import SwiftUI

struct WeekWeatherInfoView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "calendar")
                    .foregroundColor(Color(.sRGB, white: 1, opacity: 0.5))
                Text("10日天气预报")
                    .foregroundColor(Color(.sRGB, white: 1, opacity: 0.5))
                    .font(.system(size: 13, weight: .regular))
                Spacer()
            }
            .padding(.top, 10)
            .padding(.leading, 15)
            
            VStack(alignment: .center) {
                ForEach(0..<9) {_ in
                    VStack(alignment: .center, spacing: 0) {
                        Divider()
                            .background(.white)
                            .opacity(1)
                        
                        HStack(alignment: .center) {
                            HStack{
                                Text("今天")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .medium))
                                Spacer()
                                Image(systemName: "sun.max.fill")
                                    .renderingMode(.original)
                            }.padding(.trailing, 50)
                            
                            HStack(alignment: .center, spacing: nil) {
                                Text("5°")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .medium))
                                ProgressView(value: 0.1)
                                    .padding(.top, 10)
                                    .padding(.bottom, 10)
                                    .padding(.top, 8)
                                Text("15°")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .medium))
                            }
                        }
                    }
                }
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
            .padding(.bottom, 10)
        }.background(Color(.sRGB, white: 1, opacity: 0.15))
            .cornerRadius(10)
            .padding(.leading, 15)
            .padding(.trailing, 15)
    }
}

struct WeekWeatherInfoView_Previews: PreviewProvider {
    static var previews: some View {
        WeekWeatherInfoView()
    }
}
