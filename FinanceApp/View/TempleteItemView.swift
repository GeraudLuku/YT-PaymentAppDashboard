//
//  TempleteItemView.swift
//  FinanceApp
//
//  Created by LVMM on 11/05/2023.
//

import SwiftUI

struct TempleteItemView: View {
    let templete: Templete
    
    var body: some View {
        VStack {
            
            VStack(alignment: .leading){
                Text("#\(templete.serialNumber)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.bottom, 1)
                Text(templete.name)
                    .fontWeight(.bold)
                Text("20 Sep, 2021")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.bottom, 20)
            
            HStack {
                Text("Paid")
                    .font(.callout)
                    .padding(.trailing, 20)
                Text(templete.amount)
                    .fontWeight(.bold)
            }
            .padding(.vertical, 10)
            .padding(.horizontal, 7)
            .background(Color(templete.colorPrimary))
            .cornerRadius(10)
            
        }
        .padding()
        .background(Color(templete.colorSecondary))
        .cornerRadius(15)
    }
}

struct TempleteItemView_Previews: PreviewProvider {
    static var previews: some View {
        TempleteItemView(templete: templetes[0])
    }
}
