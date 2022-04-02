//
//  ContentView.swift
//  ExampleViews
//
//  Created by HyeonSoo Kim on 2022/03/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TransitionView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
            .environmentObject(TimerData())
    }
}
