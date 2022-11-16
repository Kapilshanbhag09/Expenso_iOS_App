//
//  ProfileAccountWalletSectionView.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 17/11/22.
//

import SwiftUI

struct ProfileAccountWalletSectionView: View {
    var bankName:String
    var walletName:String
    var walletBalance:String
    var body: some View {
        HStack(spacing: 8.0){
            HStack{
                Image("BankLogo"+bankName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 70.0,maxHeight: 70.0)
                    
            }
            .background(
                RoundedRectangle(cornerRadius: 16.0)
                    .foregroundColor(Color(0xF1F1F1))
                    .frame(width: 80.0,height: 80.0)
            )
            Text(walletName)
                .font(.system(size: 18.0,weight: .semibold))
                .foregroundColor(.black)
            Spacer()
            Text("₹"+walletBalance)
                .font(.system(size: 18.0,weight: .semibold))
                .foregroundColor(Color(0x212325))
        }
        .padding(16.0)
    }
}

struct ProfileAccountWalletSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAccountWalletSectionView(bankName: "HDFC", walletName: "HDFC", walletBalance: "400")
    }
}
