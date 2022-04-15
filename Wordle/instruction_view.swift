import SwiftUI
struct instruction_view:View{
    @Binding var show_instruction:Bool
    @State private var decided_len:Int=0
    var body:some View{
        VStack{
            Text("Guess the WORDLE in six tries.")
            Text("Each guess must be a valid five-letter word. Hit the enter button to submit.")
            Text("After each guess, the color of the tiles will change to show how close your guess was to the word.")
                 
        }
        
            .overlay(
                Button(action: {show_instruction=false}, label: {
                    Image(systemName: "xmark")
                })
                
            )
        

    }
    
}
