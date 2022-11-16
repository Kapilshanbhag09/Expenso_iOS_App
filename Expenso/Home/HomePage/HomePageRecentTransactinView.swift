//
//  HomePageRecentTransactinView.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 17/11/22.
//

import SwiftUI

struct HomePageRecentTransactinView: View {
    @Binding var tabSelection: Tabs
    var body: some View {
        HStack{
            Text("Recent Transaction")
                .font(.system(size: 18.0,weight: .semibold))
                .foregroundColor(Color(0x292B2D))
            Spacer()
            Button(action:{
                tabSelection = Tabs.tab2
            }){
                
                Text("See All")
                    .foregroundColor(Color(0x7F3DFF))
                    .padding(EdgeInsets(top: 7.0, leading: 16.0, bottom: 7.0, trailing: 17.0))
                    .background(
                        RoundedRectangle(cornerRadius: 40.0)
                            .foregroundColor(Color(0xEEE5FF))
                        
                    )
                
                
                
            }
        }
        .padding(16.0)
    }
}

struct HomePageRecentTransactinView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageRecentTransactinView(tabSelection: .constant(Tabs.tab1))
    }
}
