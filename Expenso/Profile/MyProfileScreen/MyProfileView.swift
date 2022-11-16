//
//  MyProfileView.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 16/11/22.
//

import SwiftUI

struct MyProfileView: View {
    var body: some View {
        NavigationView(){
            ScrollView(){
                VStack{
                    MyProfileTopDetailsView()
                    Spacer()
                    VStack{
                        VStack{
                            VStack(spacing: 20.0){
                                NavigationLink(destination:ProfileAccountView()){
                                    ProfileViewIndiSectionView(sectionNo: "1", sectionName: "Account")
                                }
                                Divider()
                                ProfileViewIndiSectionView(sectionNo: "2", sectionName: "Settings")
                                Divider()
                                ProfileViewIndiSectionView(sectionNo: "3", sectionName: "Export Data")
                                Divider()
                                
                                ProfileViewIndiSectionView(sectionNo: "4", sectionName: "Logout")
                                
                            }
                            
                        }
                        .padding(16.0)
                        .background(
                            RoundedRectangle(cornerRadius: 12.0)
                                .foregroundColor(.white)
                        )
                    }.padding(16.0)
                }
            }
            .background((Color(0x1A1A36).opacity(0.03).ignoresSafeArea(edges:[.top])))
        }
    }
}


struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
