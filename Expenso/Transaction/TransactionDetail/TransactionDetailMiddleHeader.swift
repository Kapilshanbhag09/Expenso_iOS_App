//
//  TransactionDetailMiddleHeader.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 26/11/22.
//

import SwiftUI

struct TransactionDetailMiddleHeader: View {
    var type:String
    var category:String
    var wallet:String
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("Type")
                        .font(.system(size: 14.0,weight: .medium))
                        .foregroundColor(Color(0x91919F))
                    Spacer()
                        .frame(height: 8.0)
                    Text(type)
                        .font(.system(size: 16.0,weight: .semibold))
                        .foregroundColor(Color(0x0D0E0F))
                }
                .padding(.horizontal,16.0)
                .frame(width: (UIScreen.main.bounds.size.width-32.0)/3)
                VStack{
                    Text("Category")
                        .font(.system(size: 14.0,weight: .medium))
                        .foregroundColor(Color(0x91919F))
                    Spacer()
                        .frame(height: 8.0)
                    Text(category)
                        .font(.system(size: 16.0,weight: .semibold))
                        .foregroundColor(Color(0x0D0E0F))
                }
                .padding(.horizontal,16.0)
                .frame(width: (UIScreen.main.bounds.size.width-32.0)/3)
                VStack{
                    Text("Wallet")
                        .font(.system(size: 14.0,weight: .medium))
                        .foregroundColor(Color(0x91919F))
                    Spacer()
                        .frame(height: 8.0)
                    Text(wallet)
                        .font(.system(size: 16.0,weight: .semibold))
                        .foregroundColor(Color(0x0D0E0F))
                }
                .padding(.horizontal,16.0)
                .frame(width: (UIScreen.main.bounds.size.width-32.0)/3)
            }
            .padding(.vertical,12.0)
            .background(
                RoundedRectangle(cornerRadius: 12.0)
                    .foregroundColor(Color(0xFFFFFF))
            )
        }.padding(.horizontal,16.0)
    }
}

struct TransactionDetailMiddleHeader_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailMiddleHeader(type: "Income", category: "Shopping", wallet: "HDC")
    }
}
