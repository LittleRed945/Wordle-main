//
//  ContentView.swift
//  Wordle
//
//  Created by User04 on 2022/3/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isplaying=false
    @State private var show_instruction=false
    @State private var topic_len=[Int]()
    @State private var topics = [Substring]()
    @State private var topic=""
    var body:some View{
        if isplaying == false {
            main_interface_view(isplaying: $isplaying, show_instruction: $show_instruction)
                
        }else{
            playing_view(isplaying: $isplaying)
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
