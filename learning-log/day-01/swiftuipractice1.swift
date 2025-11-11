import SwiftUI

struct ContentView: View{
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .purple, .white]), 
                           StartPoint: .topLeading, 
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Jason")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.black)
                    .padding()
                VStack(spacing: 8){
                    Image(systemName: /*finance icon*/)
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("$280,54")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.black)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Preview : PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}