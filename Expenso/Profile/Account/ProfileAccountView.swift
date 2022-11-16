//
//  ProfileAccountView.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 17/11/22.
//

import SwiftUI

struct ProfileAccountView: View {
    var body: some View {
       
        VStack{
            
            ProfileAccountTopBG(balance: "3000")
            Spacer()
                .frame(height:10.0)
            
            ProfileAccountWalletSectionView(bankName: "HDFC", walletName: "HDFC", walletBalance: "300")
            
            Divider()
            ProfileAccountWalletSectionView(bankName: "Canara", walletName: "Canara", walletBalance: "300")
            Divider()
            
            ProfileAccountWalletSectionView(bankName: "SBI", walletName: "SBI", walletBalance: "4000")
            
            
            Spacer()
        }
        
    }
}

struct ProfileAccountView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAccountView()
    }
}
