//
//  ProfileAccountTopBG.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 17/11/22.
//

import SwiftUI

struct ProfileAccountTopBG: View {
    var balance:String
    var body: some View {
        ZStack{
            Image("ProfileAccountBG")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:  UIScreen.main.bounds.size.width)
            VStack{
                Text("Account Balance")
                    .font(.system(size: 14.0,weight: .medium))
                    .foregroundColor(Color(0x91919F))
                Text("₹"+balance)
                    .font(.system(size: 40.0,weight: .semibold))
                    .foregroundColor(Color(0x161719))
            }
            
        }
    }
}

struct ProfileAccountTopBG_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAccountTopBG(balance: "3000")
    }
}
