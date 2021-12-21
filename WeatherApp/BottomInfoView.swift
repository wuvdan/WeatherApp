//
//  BottomInfoView.swift
//  WeatherApp
//
//  Created by wudan on 2021/11/23.
//

import SwiftUI

struct BottomInfoView: View {
    
    @State private var weathIcon : UIImage? = nil
    
    var body: some View {
        VStack(alignment: .center, spacing: nil) {
            VStack {
                Divider()
                    .background(.white)
                    .opacity(0.6)
                HStack {
                    Text("在”地图“中打开")
                        .fontWeight(.medium)
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .opacity(0.6)
                    Spacer()
                    Image(systemName: "arrow.up.forward.square.fill")
                        .foregroundColor(.white)
                        .opacity(0.6)
                }
                Divider()
                    .background(.white)
                    .opacity(0.6)
            }
            .padding(.trailing, 15)
            .padding(.leading, 15)
            HStack{
                Text("长江西路辅路的天气")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.system(size: 16))
            }
            HStack(alignment: .center, spacing: 0, content: {
                Text("进一步了解")
                    .foregroundColor(.white)
                    .fontWeight(.regular)
                    .font(.system(size: 15))
                Text("天气数据")
                    .underline()
                    .foregroundColor(.white)
                    .fontWeight(.regular)
                    .font(.system(size: 15))
                Text("和")
                    .foregroundColor(.white)
                    .fontWeight(.regular)
                    .font(.system(size: 15))
                Text("地图数据")
                    .underline()
                    .foregroundColor(.white)
                    .fontWeight(.regular)
                    .font(.system(size: 15))
            }).padding(.top, 2)
            
            HStack{
                
//                Image(we)
                Image(systemName: "")
            }
        }
    }
    
    func fetchRemoteImage() {
        guard let url = URL(string: "http://hdjc8.com/images/logo.png") else { return }
        URLSession.shared.dataTask(with: url){ (data, response, error) in
            if let image = UIImage(data: data!){
                self.weathIcon = image
            }
            else{
                print(error ?? "")
            }
        }.resume()
    }
}

struct BottomInfoView_Previews: PreviewProvider {
    static var previews: some View {
        BottomInfoView()
    }
}
