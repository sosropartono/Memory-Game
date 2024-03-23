import SwiftUI

struct Card: View {
    @State private var isFlipped = false
    var body: some View {
        Button(action: {
            withAnimation {
                isFlipped.toggle()
            }
        }){
            if isFlipped{
                Text("🃏") // Emoji for back side of the card
                        .font(.largeTitle)
                        .padding()
                        .frame(width: 100, height: 130)
                        .background(Color.white)
                        .cornerRadius(10)
                        .foregroundColor(.white).padding()
            } else {
                
                RoundedRectangle(cornerRadius: 10).fill(Color.blue).frame(width:100, height:130).padding()}}
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Memory Game :)")
                .font(.title)
                .padding()
            
            // Grid of cards
            VStack {
                ForEach(0..<3) { _ in
                    HStack {
                        ForEach(0..<3) { _ in
                            Card()
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
