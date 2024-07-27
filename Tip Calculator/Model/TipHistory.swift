//
//  TipHistory.swift
//  Tip Calculator
//
//  Created by Prakhar Parakh on 27/07/24.
//

import SwiftData
import Foundation

@Model
class TipHistory {
  let tipAmount: Double
  let date: Date

  init(tipAmount: Double, date: Date) {
    self.tipAmount = tipAmount
    self.date = date
  }
}
