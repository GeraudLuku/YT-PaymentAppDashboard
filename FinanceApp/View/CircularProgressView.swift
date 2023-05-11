//
//  CircularProgress.swift
//  FinanceApp
//
//  Created by LVMM on 11/05/2023.
//

import SwiftUI

struct CircularProgressView: View {
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: 0.65)
                .stroke(
                    Color("Cyan"),
                    style: StrokeStyle(
                        lineWidth: 20,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(80))
            
            Circle()
                .trim(from: 0, to: 0.23)
                .stroke(Color("OrangePrimary"),
                        style: StrokeStyle(
                            lineWidth: 20,
                            lineCap: .round
                        )
                )
                .rotationEffect(.degrees(-25))
        }
    }
}

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView()
            .padding()
    }
}
