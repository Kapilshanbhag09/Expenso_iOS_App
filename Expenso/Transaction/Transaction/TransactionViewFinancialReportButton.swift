//
//  TransactionViewFinancialReportButton.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 26/11/22.
//

import SwiftUI

struct TransactionViewFinancialReportButton: View {
    var body: some View {
        Button(action:{
            print("action Tapped")
        }
        ){
            HStack{
                Text("See your finacial report")
                    .font(.system(size: 16))
                    .foregroundColor(Color(0x7F3DFF))
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.system(size: 16))
                    .foregroundColor(Color(0x7F3DFF))
            }
            .padding(.vertical,14.5)
            .padding(.horizontal,16.0)
            .background(
                RoundedRectangle(cornerRadius: 8.0)
                    .foregroundColor(Color(0xEEE5ff))
            )
        }
    }

}


struct TransactionViewFinancialReportButton_Previews: PreviewProvider {
    static var previews: some View {
        TransactionViewFinancialReportButton()
    }
}
