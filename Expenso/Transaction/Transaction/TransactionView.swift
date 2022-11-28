//
//  TransactionView.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 16/11/22.
//

import SwiftUI

struct TransactionView: View {
    var body: some View {
        NavigationView(){
            VStack{
                TransactionViewNavBar()
                TransactionViewFinancialReportButton()
                ScrollView(showsIndicators: false){
                    HStack{
                        Text("Today")
                            .foregroundColor(Color(0x0D0E0F))
                            .font(.system(size: 18.0,weight: .semibold))
                        Spacer()
                    }
                    .padding(.top,10.0)
                    Group{
                        TransactionViewList()
                        TransactionViewList()
                        TransactionViewList()
                    }
                    
                    
                    
                    HStack{
                        Text("Yesterday")
                            .foregroundColor(Color(0x0D0E0F))
                            .font(.system(size: 18.0,weight: .semibold))
                        Spacer()
                    }
                    .padding(.top,10.0)
                    Group{
                        TransactionViewList()
                        TransactionViewList()
                    }
                    HStack{
                        Text("This week")
                            .foregroundColor(Color(0x0D0E0F))
                            .font(.system(size: 18.0,weight: .semibold))
                        Spacer()
                    }
                    .padding(.top,10.0)
                    Group{
                        TransactionViewList()
                        TransactionViewList()
                        TransactionViewList()
                        TransactionViewList()
                        TransactionViewList()
                    }
                }
                
            }
            .padding(.horizontal)
        }
    }
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView()
    }
}
