import SwiftUI
struct board_view:View{
    let str:Substring
    var body:some View{
        ZStack{
            Rectangle()
            .stroke(Color.black, lineWidth: 3)
            .frame(width: 25, height:25)
            Text(str).frame(width: 25, height:25)
        }
        

    }
    
}
