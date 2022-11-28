//
//  TransactionDetailViewNavbar.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 26/11/22.
//

import SwiftUI

struct TransactionDetailViewNavbar: View {
    
    @State var transactionType:String
    @State var viewModel:TransactionDetailViewModel = TransactionDetailViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    var body: some View {
        HStack{
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }){
                Image(systemName: "arrow.backward")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
                    .padding(.horizontal,4.0)
                    .frame(width:32.0,height:32.0)
                    
            }
            Spacer()
            Button(action:{}){
                Image("TrashIcon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:24.0,height:26.0)
            }
        }
        .padding(16.0)
        .background(
            HStack{
                Text("Detail Transaction")
                    .font(.system(size: 18.0,weight: .semibold))
                    .foregroundColor(.white)
            }
        )
        .background(
            Rectangle()
                .foregroundColor(viewModel.getBackgroundColor(tranType: transactionType))
        )
    }
}

struct TransactionDetailViewNavbar_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailViewNavbar(transactionType: "Income")
    }
}
