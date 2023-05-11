//
//  StatisticScreen.swift
//  FinanceApp
//
//  Created by LVMM on 11/05/2023.
//

import SwiftUI

struct StatisticScreen: View {
    var body: some View {
        
        // Top Filter scrollview
        VStack {
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(filters, id: \.self) { item in
                        FilterView(title: item)
                    }
                }
            }
            .frame(height: 50)
            .padding(.bottom, 30)
            
            //Pie Chart Section
            ZStack(alignment: .center) {
                CircularProgressView()
                    .frame(width: 200, height: 200)
                //Middle Text
                VStack{
                    Text("Income")
                        .font(.headline)
                        .foregroundColor(.gray)
                    Text("$12,345.22")
                        .fontWeight(.bold)
                }
            }
            .padding(.bottom)
            
            VStack{
                Text("$2,789.99")
                    .fontWeight(.bold)
                Text("Expenses")
                    .font(.headline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            // Templetes section
            VStack(alignment: .leading) {
                
                HStack(alignment: .firstTextBaseline) {
                    Text("Templetes")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("recently added")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .fontWeight(.bold)
                        .padding(.leading, 10)
                }
                
                //Scroll templete
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(templetes, id: \.name) {templete in
                            TempleteItemView(templete: templete)
                        }
                    }
                }
                .frame(height: 200)
            }
            .padding(.leading, 35)
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
    
}

struct StatisticScreen_Previews: PreviewProvider {
    static var previews: some View {
        StatisticScreen()
    }
}
