

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {
  
  @Published var currentPage: String
  
  init() {
    if !UserDefaults.standard.bool(forKey: "didLaunchBefore"){
      UserDefaults.standard.set(true, forKey: "didLaunchBefore")
      currentPage = "onboardingView"
    }else {
      currentPage = "homeView"
    }
  }
}
