//
//  ProfileViewIndiSectionView.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 16/11/22.
//

import SwiftUI

struct ProfileViewIndiSectionView: View {
    var sectionNo:String
    var sectionName:String
    var body: some View {
        HStack(spacing: 9.0){
            Image("ProfileViewSection"+sectionNo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40.0,height: 40.0)
            Text(sectionName)
                .font(.system(size: 16.0,weight: .medium))
                .foregroundColor(Color(0x292B2D))
            Spacer()
        }
    }
}

struct ProfileViewIndiSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileViewIndiSectionView(sectionNo: "1", sectionName: "Account")
    }
}
