//
//  MainView.swift
//  WeatherApp
//
//  Created by wudan on 2021/11/11.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            TabView {
                ContentView()
                ContentView()
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .background(.blue.opacity(0.9))

            VStack(alignment: .center, spacing: 0) {
                HStack(alignment: .center, spacing: 0){
                    Button {
                        
                    } label: {
                        Image(systemName: "align.vertical.bottom.fill").foregroundColor(.white)
                    }.padding(.leading, 15)
                    
                    Spacer()

                    Button {
                        
                    } label: {
                        Image(systemName: "align.vertical.bottom.fill").foregroundColor(.white)
                    }
                    
                    Spacer()

                    Button {
                        
                    } label: {
                        Image(systemName: "align.vertical.bottom.fill").foregroundColor(.white)
                    }.padding(.trailing, 15)
                }
                .frame(width: UIScreen.main.bounds.width, height: 44)
                .background(.blue)
            }
            .background(.blue)
        }
        .background(.blue)
        .preferredColorScheme(.dark)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
