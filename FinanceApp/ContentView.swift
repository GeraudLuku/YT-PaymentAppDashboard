//
//  ContentView.swift
//  FinanceApp
//
//  Created by LVMM on 09/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                TabView {
                    Text("Home")
                        .tabItem {
                            Image(systemName: "house")
                        }
                    Text("Options")
                        .tabItem {
                            Image(systemName: "folder.fill")
                        }
                    StatisticScreen()
                        .tabItem {
                            Image(systemName: "slider.horizontal.3")
                        }
                    Text("Settings")
                        .tabItem {
                            Image(systemName: "gearshape")
                        }
                }
                .padding(.horizontal)
                .accentColor(.black)
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Statistics")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "ellipsis")
                        .font(.system(size: 20))
                        .rotationEffect(.degrees(-90))
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
