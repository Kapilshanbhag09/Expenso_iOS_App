//
//  TransactionDetailViewDescription.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 26/11/22.
//

import SwiftUI

struct TransactionDetailViewDescription: View {
    var description:String
    var body: some View {
        VStack( spacing: 15.0){
            Spacer()
                .frame(height: 15.0)
            HStack{
                Text("Description")
                    .font(.system(size: 16.0,weight: .semibold))
                    .foregroundColor(Color(0x91919F))
                Spacer()
                
            }
            HStack{
                Text(description)
                    .font(.system(size: 16.0,weight: .medium))
                    .foregroundColor(Color(0x0D0E0F))
                Spacer()
            }
        }
        .padding(.horizontal,16.0)
    }
}

struct TransactionDetailViewDescription_Previews: PreviewProvider {
    static var previews: some View {
        TransactionDetailViewDescription(description: "Lorere")
    }
}
