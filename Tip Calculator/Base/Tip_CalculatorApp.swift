//
//  Tip_CalculatorApp.swift
//  Tip Calculator
//
//  Created by Prakhar Parakh on 27/07/24.
//

import SwiftUI
import SwiftData

@main
struct Tip_CalculatorApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
    .modelContainer(for: TipHistory.self)
  }
}
