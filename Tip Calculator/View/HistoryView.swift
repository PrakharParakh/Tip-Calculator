//
//  HistoryView.swift
//  Tip Calculator
//
//  Created by Prakhar Parakh on 27/07/24.
//

import SwiftUI
import SwiftData

struct HistoryView: View {
  @Query var tipHistory: [TipHistory]
  private let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .long
    return formatter
  }()

  var body: some View {
    List {
      ForEach(tipHistory) { history in
        VStack(alignment: .leading) {
          Text("\(history.tipAmount, specifier: "%.2f")")
            .font(.headline)
          Text(history.date, formatter: dateFormatter)
            .font(.subheadline)
        }
      }
    }
  }
}

#Preview {
  HistoryView()
}
