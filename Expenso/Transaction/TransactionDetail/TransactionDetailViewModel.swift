//
//  TransactionDetailViewModel.swift
//  Expenso
//
//  Created by Kapil Ganesh Shanbhag on 26/11/22.
//

import Foundation
import UIKit
import SwiftUI
class TransactionDetailViewModel{
    
    func getBackgroundColor(tranType:String) -> Color{
        if(tranType == "Expense"){
            return Color(0xFD3C4A)
        }
        else if(tranType == "Income"){
            return Color(0x00A86B)
        }
        else{
            return Color(0x0077FF)
        }
    }
}
