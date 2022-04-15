import SwiftUI
struct keyboard:View{
    @Binding var answer:[Substring]
    @Binding var topic:String
    @Binding var iscorrect:Bool
    @Binding var correct:[Substring]
    @Binding var wrong_pos:[Substring]
    @Binding var never_exist:[Substring]
    var body: some View{
        let keyboard_rows=["Q,W,E,R,T,Y,U,I,O,P".split(separator: ","),"A,S,D,F,G,H,J,K,L".split(separator: ","),"Enter,Z,X,C,V,B,N,M,Delete".split(separator: ",")]
        VStack(spacing:1){
            ForEach(keyboard_rows.indices,id:\.self){
                index in
                HStack(spacing:1){
                    ForEach(keyboard_rows[index],id:\.self){
                        key in
                        if key.count>1{
                            keyboard_view(answer:$answer,topic:$topic,iscorrect:$iscorrect,correct:$correct,wrong_pos:$wrong_pos,never_exist:$never_exist, str:key,len:2)
                        }else{
                            keyboard_view(answer:$answer,topic:$topic,iscorrect:$iscorrect,correct:$correct,wrong_pos:$wrong_pos,never_exist:$never_exist, str:key,len:1)
                        }
                        
                    }
                }
            }
        }
        
        
    }
    
}

