//
//  HomePageView.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 16/11/22.
//

import SwiftUI

struct HomePageView: View {
    @Binding var tabSelection: Tabs
    var body: some View {
        ScrollView{
            VStack{
                Text("Home Page")
                HomePageRecentTransactinView(tabSelection: $tabSelection)
            }
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView(tabSelection: .constant(Tabs.tab1) )
    }
}
