//
//  TipCalculatorViewModel.swift
//  Tip Calculator
//
//  Created by Prakhar Parakh on 27/07/24.
//

import Foundation

class TipCalculatorViewModel: ObservableObject {
  
  @Published var billAmount: Double?
  @Published var tipPercent: Double = 15
  @Published var showResult: Bool = false
  @Published var tipAmount: Double?

  func calculateTipAmount() {
    guard let billAmount = billAmount else { return }
    let tipAmount = billAmount * (tipPercent / 100)
    self.tipAmount = tipAmount
    showResult = true
  }
}
