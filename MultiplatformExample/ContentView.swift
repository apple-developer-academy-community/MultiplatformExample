//
//  ContentView.swift
//  MultiplatformExample
//
//  Created by SeongHoon Jang on 2022/11/23.
//

import SwiftUI

struct ContentView: View {
    let taps = ["Tap1", "Tap2", "Tap3", "Tap4"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(taps, id: \.self) { tap in
                    NavigationLink {
                        Text(tap)
                    } label: {
                        Label(tap, systemImage: "info.circle")
                    }
                }
            }
            .listStyle(.sidebar)
            .navigationTitle("Sidebar")
            
            Text("Please select section")
                .font(.largeTitle)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
