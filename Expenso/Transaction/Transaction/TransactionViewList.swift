//
//  TransactionViewList.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 26/11/22.
//

import SwiftUI

struct TransactionViewList: View {
    var body: some View {
        NavigationLink(destination:TransactionDetailView(transactionType: "Income")){
            HStack{
                Image("TraShopping")
                VStack(alignment:.leading){
                    Text("Shopping")
                        .font(.system(size: 16.0,weight: .semibold))
                        .foregroundColor(Color(0x292B2D))
                    Text("Buy some grocery")
                        .font(.system(size: 13.0,weight: .medium))
                        .foregroundColor(Color(0x91919F))
                    
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("-$120")
                        .font(.system(size: 16.0,weight: .semibold))
                        .foregroundColor(Color(0xFD3C4A))
                    Text("10:00 AM")
                        .font(.system(size: 13.0,weight: .medium))
                        .foregroundColor(Color(0x91919F))
                }
            }
            .padding(.vertical,14.0)
            .padding(.horizontal,16.0)
            
            
            .background(
                RoundedRectangle(cornerRadius: 8.0)
                    .foregroundColor(Color(0xFCFCFC))
            )
        }
    }
}

struct TransactionViewList_Previews: PreviewProvider {
    static var previews: some View {
        TransactionViewList()
    }
}
