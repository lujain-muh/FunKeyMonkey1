


import SwiftUI

struct Hi5View: View {
  @State private var hasTimeElapsed = false
  @State private var overlayPoints: [CGPoint] = []
  @StateObject private var gameLogicController = GameLogicController()
  @State var pushNewView: Bool = false
  
  
  
    var body: some View {
      
      // Don't deleted it guys //
      
//      let speechService = SpeechService()
//      
//      override func onAppearview (_ animated:Bool) {
//        super.onAppearview(animated)
//        
//        speechService.say("give me hi five!")
//      
      ZStack {
        
        
        
        
        CameraView {
          
          overlayPoints = $0
          gameLogicController.checkStarsCount($0.count)
        }
        .overlay(
          FingersOverlay(with: overlayPoints)
            .foregroundColor(.orange)
        )
        .edgesIgnoringSafeArea(.all)
        
        StarAnimator(makeItRain: $gameLogicController.makeItRain) {
          gameLogicController.didRainStars(count: $0)
        }
        
        VStack(spacing:100){

        Image ("monkey-hi5")
          .resizable()
          .frame(width: 450, height: 750)
          .padding(.trailing, 400.0)
          StrokeText(text: "Give me Hghi five", width: 1, color: .black)
            .foregroundColor(Color("yellow"))
            .font(.system(size: 45 ,design: .rounded))
            .fontWeight(.heavy)
            .font(.title)
            .fontWeight(.bold)
            .padding(.bottom, 50)
        }
      }
      .onAppear {
        gameLogicController.start()
      }
      .overlay(
        successBadge
          .animation(.default)
        
      )
    }
  
  
  
  @ViewBuilder
  private var successBadge: some View {
    ZStack{
    if !hasTimeElapsed {
    if let success = gameLogicController.successBadge {
   Image("high-five-clipart-md")
    .resizable()
    .imageScale(.large)
    .foregroundColor(.white)
    .frame(width: 200, height: 200)
    .shadow(radius: 5)
     // playSouund(sound: "", type:"mp3")
        }
        else {
          EmptyView()
        }
        
      }
      
      else{
        
        CountdownView()
      }

        
        
    }.onAppear(){
      DispatchQueue.main.asyncAfter(deadline: .now() + 10.0) {
        hasTimeElapsed = true
      }
    }
    }
}

struct Hi5View_Previews: PreviewProvider {
    static var previews: some View {
        Hi5View()
    }
}
