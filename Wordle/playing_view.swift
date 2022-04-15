import SwiftUI
struct playing_view:View{
    @Binding var isplaying:Bool
    @State private var answer = [Substring]()
    @State private var topics = [Substring]()
    @State private var topic=""
    @State private var topic_len:Double=5
    @State private var correct_color = Color(.sRGB, red: 0, green: 1,blue: 0)
    @State private var incorrect_color = Color(.sRGB, red: 1, green: 1,blue: 1)
    @State private var wrong_pos_color = Color(.sRGB, red: 1, green: 0,blue: 0)
    @State private var iscorrect:Bool=false
    //the array of the correct pos,correct char
    @State private var correct=[Substring]()
    //the array of the wrong pos,correct char
    @State private var wrong_pos=[Substring]()
    //the array of the char never existed in the topic
    @State private var never_exist=[Substring]()
    var body: some View {
    VStack {
    if !topics.isEmpty {
        Text("Wordle").font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color.red)
        HStack{
            
            //color picker
            ColorPicker("Correct", selection: $correct_color)
            ColorPicker("Wrong", selection: $incorrect_color)
            ColorPicker("Wrong position", selection: $wrong_pos_color)
            //
        }
        
        Slider(value: $topic_len, in: 3...8,step:1).onChange(of: topic_len, perform: {newValue in
            let content = readFile(topic_len: topic_len)
            topics = content.split(separator: "\r\n")
            topic=String(topics.randomElement()!)
        })
        Text("len:"+String(Int(topic_len)))
        Text(topic)
        generate_board(input: answer)
        Text(answer.joined(separator: ""))
        keyboard(answer:$answer,topic: $topic,iscorrect:$iscorrect,correct:$correct,wrong_pos:$wrong_pos,never_exist:$never_exist)
        Button(action:  {isplaying=false}, label: {
            Image(systemName:"house.circle")
        })
    }
        
    }
    .background(Image("Wordle_background").scaledToFit())
    .onAppear {
    let content = readFile(topic_len: topic_len)
    topics = content.split(separator: "\r\n")
        topic=String(topics.randomElement()!)
        print(topics)
    }
    }
    
}
