//
//  ResultView.swift
//  Tip Calculator
//
//  Created by Prakhar Parakh on 27/07/24.
//

import SwiftUI

struct ResultView: View {
  
  var tipAmount: Double?

  var body: some View {
    VStack(spacing: 16) {
      Text("Tip Amount")
      .font(.title3)
      .bold()
  
      HStack {
        Text("\(Locale.current.currency?.identifier ?? "USD")")
        Text(String(format: "%.2f", tipAmount ?? 0))
          .bold()
      }
    }
    .padding()
    .background(
      RoundedRectangle(cornerRadius: 12)
        .stroke(.green.gradient)
        .frame(width: UIScreen.main.bounds.width - 32)
        .shadow(radius: 5)
      
    )
  }
}

#Preview {
  ResultView()
}
