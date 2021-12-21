//
//  HeaderInfoView.swift
//  WeatherApp
//
//  Created by wudan on 2021/11/10.
//

import SwiftUI

struct HeaderInfoView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Text("合肥市")
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .regular, design: .default))
            
            Text("15°")
                .foregroundColor(.white)
                .font(.system(size: 100, weight: .thin, design: .default))
                .offset(CGSize(width: 10, height: 0))
                .padding(.top, -10)
                .padding(.bottom, -10)
            
            Text("晴间多云")
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .medium, design: .default))
            
            Text("最高15° 最低 5°")
                .foregroundColor(.white)
                .font(.system(size: 18, weight: .medium, design: .default))
        }
        .background(.clear)
        .padding(.bottom, 68)
        .padding(.top, 74)
    }
}

struct HeaderInfoView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderInfoView()
    }
}
