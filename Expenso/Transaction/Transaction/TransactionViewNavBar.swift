//
//  TransactionViewNavBar.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 26/11/22.
//

import SwiftUI

struct TransactionViewNavBar: View {
    var body: some View {
        HStack{
            Button(action:{}){
                HStack{
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color(0x7F3DFF))
                    Text("This Month")
                        .font(.system(size: 14.0,weight: .medium))
                        .foregroundColor(Color(0x212325))
                    
                }
                .padding(.horizontal,16.0)
                .padding(.vertical,11.0)
                .background(
                    RoundedRectangle(cornerRadius: 40.0)
                        .strokeBorder(Color(0xF1F1FA), lineWidth: 1.0)
                )
            }
            Spacer()
            Button(action:{}){
                HStack{
                    Image("SortFilterIcon")
                }
                .frame(width: 40.0,height: 40.0)
                .background(
                    RoundedRectangle(cornerRadius: 8.0)
                        .strokeBorder(Color(0xF1F1FA), lineWidth: 1.0)
                    )
            }
            
        }
    }
}

struct TransactionViewNavBar_Previews: PreviewProvider {
    static var previews: some View {
        TransactionViewNavBar()
    }
}
