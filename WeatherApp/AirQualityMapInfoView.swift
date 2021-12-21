//
//  AirQualityMapInfoView.swift
//  WeatherApp
//
//  Created by wudan on 2021/11/11.
//

import SwiftUI
import MapKit

struct AirQualityMapInfoView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 30.2906511800, longitude: 120.2623587000), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))

    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 0) {
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack{
                        Image(systemName: "aqi.low").foregroundColor(.white)
                        Text("空气质量地图")
                            .foregroundColor(.white)
                            .font(.system(size: 13))
                            .opacity(0.8)
                    }
                    
                    Map(coordinateRegion: $region)
                        .frame(height: (UIScreen.main.bounds.width - 30) * 9.0 / 16.0)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                        .shadow(radius: 10)
                        .cornerRadius(10)
                    
                    HStack(alignment: .center, spacing: nil) {
                        Text("查看更多")
                            .foregroundColor(.white)
                            .font(.system(size: 13, weight: .medium))
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                    }.padding(.top, 8)
                    
                }
                .padding(.leading, 30)
                .padding(.trailing, 30)
                .padding(.bottom, 10)
                .padding(.top, 10)
                
            }
            .background(Color(.sRGB, white: 1, opacity: 0.15))
            .cornerRadius(10)
            .padding(.leading, 15)
            .padding(.trailing, 15)
        }
    }
}

struct AirQualityMapInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AirQualityMapInfoView()
    }
}
