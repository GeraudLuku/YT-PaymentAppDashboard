//
//  FilterView.swift
//  FinanceApp
//
//  Created by LVMM on 11/05/2023.
//

import SwiftUI

struct FilterView: View {
    @State var isSelected: Bool = false
    let title: String
    
    var body: some View {
        Text(title)
            .foregroundColor(isSelected ? .white : .black)
            .fontWeight(.bold)
            .padding(.horizontal, 30)
            .padding(.vertical, 10)
            .background(isSelected ? Color.black : Color("FilterColor"))
            .cornerRadius(10)
            .onTapGesture {
                isSelected = !isSelected
            }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView(title: "1 Year")
    }
}
