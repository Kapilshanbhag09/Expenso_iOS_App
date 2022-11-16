//
//  SplashScreenView.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 22/09/22.
//
import SwiftUI
import Foundation
struct SplashScreenView: View {
    var body: some View {
        NavigationView{
        ZStack{
        VStack{
            HStack{
                LinearGradient(gradient: Gradient(colors: [Color(0xFA28FF)]), startPoint: .bottom, endPoint: .top)
                  .mask(
                    Circle()
                      .frame(width: 74, height: 74)
                      .blur(radius: 20)
                    )
                Spacer()
                    .frame(width: 100.0)
            }
            
            
            Spacer()
        }
        .background(Color(0x7F3DFF))
            VStack{
                Text("Expenso")
                    .foregroundColor(Color(0xE5E5E5))
                    .font(.system(size: 56,weight: .bold))
                    .padding(.trailing,10.0)
            }
        }.navigationBarHidden(true)
        }
    }
}


struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
