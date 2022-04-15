import SwiftUI
struct keyboard_view:View{
    @Binding var answer:[Substring]
    @Binding var topic:String
    @Binding var iscorrect:Bool
    @Binding var correct:[Substring]
    @Binding var wrong_pos:[Substring]
    @Binding var never_exist:[Substring]
    let str:Substring
    let len:Int
    
    var body:some View{
        ZStack{
            Rectangle()
                .fill(Color.gray)
                .frame(width: CGFloat(len)*20, height:25)
            Button(action: {
                if str.lowercased() == "Delete".lowercased(){
                    if answer.count>0{
                        answer.popLast()
                    }
                    
                }else if str.lowercased() == "Enter".lowercased(){
                    let word = answer.joined(separator: "").lowercased()                    
                }else{
                    if 5>answer.count{
                        answer.append(str)
                    }
                    
                }
            }, label: {
                Text(str).font(.system(size: CGFloat(20/len)))
                    .foregroundColor(.white)
            })
        }
        

    }
    
}
