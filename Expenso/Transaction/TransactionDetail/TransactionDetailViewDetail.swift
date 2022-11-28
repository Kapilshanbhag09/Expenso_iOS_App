//
//  TransactionDetailViewDetail.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 26/11/22.
//

import SwiftUI

struct TransactionDetailViewDetail: View {
    @State var transactionType:String
    @State var viewModel:TransactionDetailViewModel = TransactionDetailViewModel()
    
    
    var body: some View {
        VStack(spacing:0.0){
            HStack{
                Spacer()
                Text("$120")
                    .font(.system(size: 48,weight: .bold))
                    .foregroundColor(.white)
                Spacer()
                
            }
            .padding(.vertical,16.0)
            Text("Buy some grocery")
                .foregroundColor(Color(0xFCFCFC))
                .font(.system(size: 16.0,weight: .medium))
                .padding(.vertical,8.0)
            Text("Saturday 4 June 2021 16:20")
                .foregroundColor(Color(0xFCFCFC))
                .font(.system(size: 13.0,weight: .medium))
                .opacity(0.88)
                .padding(.bottom,8.0)
            Spacer()
                .frame(height:50.0)
            
            
        }
        .padding(.horizontal,16.0)
        .background(
            Rectangle()
                .foregroundColor(viewModel.getBackgroundColor(tranType: transactionType))
                .cornerRadius(16.0,corners: [.bottomLeft,.bottomRight])
        )
    }
}

struct TransactionDetailViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailViewDetail(transactionType: "Income")
    }
}
