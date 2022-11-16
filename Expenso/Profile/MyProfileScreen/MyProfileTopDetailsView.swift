//
//  MyProfileTopDetailsView.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 16/11/22.
//

import SwiftUI

struct MyProfileTopDetailsView: View {
    var body: some View {
        HStack(spacing:12.0){
            HStack{
                Image("ProfilePhoto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80.0,height: 80.0)
                    .clipShape(Circle())
            }
            .padding(4.0)
            .background(
                Circle()
                    .stroke(Color(0x7F3DFF),lineWidth: 2.0)
            )
            
            VStack(alignment:.leading,spacing: 8.0){
                Text("Username")
                    .font(.system(size:14.0,weight: .medium))
                    .foregroundColor(Color(0x91919F))
                Text("Kapil Shanbhag")
                    .font(.system(size:24.0,weight: .semibold))
                    .foregroundColor(Color(0x161719))
            }
            Spacer()
            HStack{
                Image("ProfileEditButton")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20.0,height: 20.0)
            }
            .padding(16.0)
            .background(
                RoundedRectangle(cornerRadius: 8.0)
                        .stroke(Color(0xF1F1FA),lineWidth: 1)
                        .foregroundColor(.clear)


            )
        }.padding(16.0)
        
    }
}

struct MyProfileTopDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileTopDetailsView()
    }
}
