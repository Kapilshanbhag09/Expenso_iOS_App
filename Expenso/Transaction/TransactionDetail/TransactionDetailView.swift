//
//  TransactionDetailView.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 26/11/22.
//

import SwiftUI

struct TransactionDetailView: View {
    @State var transactionType:String
    @State var viewModel:TransactionDetailViewModel = TransactionDetailViewModel()
    var body: some View {
        VStack(spacing:0.0){
            TransactionDetailViewNavbar(transactionType: transactionType)
            ScrollView{
                TransactionDetailViewDetail(transactionType: transactionType)
                TransactionDetailMiddleHeader(type: "Expense", category: "Shopping", wallet: "HDFC")
                    .padding(.top,-30)
                TransactionDetailViewDescription(description: "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.")
                TransactionDetailViewAttachment()
                
                
                Spacer()
            }
            .background(
                Rectangle()
                    .foregroundColor(.white)
            )
            
            HStack{
                Button(action:{}){
                    HStack{
                        Spacer()
                        Text("Edit")
                            .font(.system(size: 18.0,weight: .semibold))
                            .foregroundColor(Color(0xFCFCFC))
                        Spacer()
                    }
                    .padding(.vertical,17.0)
                    .background(
                        RoundedRectangle(cornerRadius: 16.0)
                            .foregroundColor(Color(0x7F3DFF))
                    )
                }
            }
            
            .padding(.horizontal,16.0)
            .background(
                Rectangle()
                    .foregroundColor(.white)
                    .ignoresSafeArea()
            )
        }
        .background(
            Rectangle()
                .foregroundColor(viewModel.getBackgroundColor(tranType: transactionType))
                .ignoresSafeArea()
        )
        .navigationBarHidden(true)
        
    }
}

struct TransactionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailView(transactionType: "Income")
    }
}
