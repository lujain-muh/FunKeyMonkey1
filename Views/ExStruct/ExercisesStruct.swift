import SwiftUI





//*************ExercisesStart1**************//

struct ExercisesStart1: View {
  
  @State var timeRemaining = 5
  @State private var hasTimeElapsed = false
  @State var pushNewView: Bool = false
  
  var body: some View {
    
    
   // ScrollView (showsIndicators: false) {
      ZStack{
        
        if !hasTimeElapsed {
          
          CameraView()
          VStack ( spacing: 16){
            HStack (){
            BanansStruct1()}
            Timer1(timeRemaining: $timeRemaining)
            workoutAnimation()
            Text("Running in place").padding(.top, 800.0)}.padding()}
        
        
        else{
          
         Hi5View1()}}
        .onAppear(){
         DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
          hasTimeElapsed = true}}
      
      
      
  //  }
      }}

  




    
    
    

//*************ExercisesStart2**************//

struct ExercisesStart2: View {
  
  @State var timeRemaining = 5
  @State private var hasTimeElapsed = false
  @State var pushNewView: Bool = false
  
  var body: some View {
    
    
   // ScrollView (showsIndicators: false) {
      ZStack{
        
        if !hasTimeElapsed {
          
          CameraView()
          VStack ( spacing: 16){
            HStack (){
            BanansStruct2()}
            Timer1(timeRemaining: $timeRemaining)
            workoutAnimation()
            Text("Running in place").padding(.top, 800.0)}.padding()}
        
        
        else{
          
         Hi5View2()}}
        .onAppear(){
         DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
          hasTimeElapsed = true}}
      
      
      
  //  }
      }}

    
    




//*************ExercisesStart3**************//

struct ExercisesStart3: View {

@State var timeRemaining = 5
@State private var hasTimeElapsed = false
@State var pushNewView: Bool = false

var body: some View {


// ScrollView (showsIndicators: false) {
  ZStack{
    
    if !hasTimeElapsed {
      
      CameraView()
      VStack ( spacing: 16){
        HStack (){
        BanansStruct3()}
        Timer1(timeRemaining: $timeRemaining)
        workoutAnimation()
        Text("Running in place").padding(.top, 800.0)}.padding()}
    
    
    else{
      
     Hi5View3()}}
    .onAppear(){
     DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
      hasTimeElapsed = true}}
  
  
  
//  }
  }}


//*************ExercisesStart4**************//

struct ExercisesStart4: View {

@State var timeRemaining = 5
@State private var hasTimeElapsed = false
@State var pushNewView: Bool = false

var body: some View {


// ScrollView (showsIndicators: false) {
  ZStack{
    
    if !hasTimeElapsed {
      
      CameraView()
      VStack ( spacing: 16){
        HStack (){
        BanansStruct4()}
        Timer1(timeRemaining: $timeRemaining)
        workoutAnimation()
        Text("Running in place").padding(.top, 800.0)}.padding()}
    
    
    else{
      
     Hi5View4()}}
    .onAppear(){
     DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
      hasTimeElapsed = true}}
  
  
  
//  }
  }}



//*************ExercisesStart4**************//

struct ExercisesStart5: View {

@State var timeRemaining = 5
@State private var hasTimeElapsed = false
@State var pushNewView: Bool = false

var body: some View {


// ScrollView (showsIndicators: false) {
  ZStack{
    
    if !hasTimeElapsed {
      
      CameraView()
      VStack ( spacing: 16){
        HStack (){
        BanansStruct5()}
        Timer1(timeRemaining: $timeRemaining)
        workoutAnimation()
        Text("Running in place").padding(.top, 800.0)}.padding()}
    
    
    else{
      
     Hi5View5()
      
    }}
    .onAppear(){
     DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
      hasTimeElapsed = true}}
  
  
  
//  }
  }}
























/*
struct ExercisesStart2_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesStart2()
    }
}
*/





/*
 let imagesc = ["BananaEmptey" ,"BananaEmptey" , "BananaEmptey" , "BananaEmptey"] // Array of image names to show
 
 let imagesB = ["BananaEmptey" , "BananaColor"] // Array of image names to show
 @State var activeImageIndex = 0 // Index of the currently displayed image
 
 
 let imageSwitchTimer = Timer.publish(every: 10, on: .main, in: .common).autoconnect()
 */






/*
 Image(imagesB[activeImageIndex])
   .resizable()
   .scaledToFit()
   .frame(width: 56.0, height: 74.0)
   .onReceive(imageSwitchTimer) { _ in
     // Go to the next image. If this is the last image, go
     // back to the image #0
     self.activeImageIndex = (self.activeImageIndex + 1) % self.imagesB.endIndex
     // print(activeImageIndex)
   }
 */



// ******************************************** //

/* let imagesB = ["BananaEmptey" , "BananaColor"] // Array of image names to show
@State var activeImageIndex = 0 // Index of the currently displayed image


let imageSwitchTimer = Timer.publish(every: 10, on: .main, in: .common).autoconnect()

*/





