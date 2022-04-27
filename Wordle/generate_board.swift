import SwiftUI
struct generate_board:View{
    let input:[Substring]
    let row=[0,1,2,3,4]
    var body: some View{
        VStack{
            
                HStack{
                    ForEach(input){chr in
                        board_view(str: chr)
                        
                    }
                }
            
        }
    
    }
    
}
