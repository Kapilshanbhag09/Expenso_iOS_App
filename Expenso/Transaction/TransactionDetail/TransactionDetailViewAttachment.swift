//
//  TransactionDetailViewAttachment.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 26/11/22.
//

import SwiftUI

struct TransactionDetailViewAttachment: View {
    var body: some View {
        VStack( spacing: 15.0){
            Spacer()
                .frame(height: 15.0)
            HStack{
                Text("Attachment")
                    .font(.system(size: 16.0,weight: .semibold))
                    .foregroundColor(Color(0x91919F))
                Spacer()
                
            }
        }
        .padding(.horizontal,16.0)
    }
}

struct TransactionDetailViewAttachment_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailViewAttachment()
    }
}
