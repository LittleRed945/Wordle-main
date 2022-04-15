import SwiftUI
struct main_interface_view:View{
    @Binding var isplaying:Bool
    @Binding var show_instruction:Bool
    
    var body:some View{
        VStack{
            Text("Wordle")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.red)
            Spacer()
            HStack{
                Button(action: {
                    isplaying = true
                }, label: {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                })
                Button(action: {
                    show_instruction = true
                }, label: {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                })
                .sheet(isPresented: $show_instruction, content: {
                    instruction_view(show_instruction:$show_instruction)
                })
            }
            
            
            Spacer()
        }
        

    }
    
}
