//
//  MultiplatformExampleApp.swift
//  MultiplatformExample
//
//  Created by SeongHoon Jang on 2022/11/23.
//

import SwiftUI

@main
struct SwiftUITodoApp: App {
    var body: some Scene {
        WindowGroup {
            #if os(macOS)
            ContentView()
                .frame(minWidth: 100, idealWidth: 200, maxWidth: 300,
                       minHeight: 100, idealHeight: 200, maxHeight: 300,
                       alignment: .center)
            #else
            ContentView()
            #endif
        }
    }
}
