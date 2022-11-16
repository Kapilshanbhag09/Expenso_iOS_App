//
//  ContentView.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 22/09/22.
//

import SwiftUI

struct ContentView: View {
    @State var tabSelection: Tabs = .tab1
    var body: some View {
//        if(UserDefaults.standard.string(forKey: "isUserLoggedIn") ?? "N" == "N"){
//            SplashScreenView()
//        }
        TabView(selection: $tabSelection){
            HomePageView(tabSelection: $tabSelection)
                .tabItem{
                    Label("Home",image: tabSelection == Tabs.tab1 ?"TabImageA1":"TabImage1")
                }
                .tag(Tabs.tab1)
            TransactionView()
                .tabItem{
                    Label("Transaction",image: tabSelection == Tabs.tab2 ?"TabImageA2":"TabImage2")
                }
                .tag(Tabs.tab2)
            BudgetView()
                .tabItem{
                    Label("Budget",image: tabSelection == Tabs.tab3 ?"TabImageA3":"TabImage3")
                }
                .tag(Tabs.tab3)
            
            MyProfileView()
                .tabItem{
                    Label("Profile",image: tabSelection == Tabs.tab4 ?"TabImageA4":"TabImage4")
                }
                .tag(Tabs.tab4)
        }
        .background(
            Rectangle()
                .foregroundColor(Color(0x000000))
        )
        .accentColor(Color(0x7F3DFF))
    }
}

enum Tabs{
    case tab1, tab2, tab3, tab4
}
extension Color {
  init(_ hex: UInt, alpha: Double = 1) {
    self.init(
      .sRGB,
      red: Double((hex >> 16) & 0xFF) / 255,
      green: Double((hex >> 8) & 0xFF) / 255,
      blue: Double(hex & 0xFF) / 255,
      opacity: alpha
    )
  }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
