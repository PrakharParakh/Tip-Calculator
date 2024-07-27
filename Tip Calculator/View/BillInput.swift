//
//  TipInput.swift
//  Tip Calculator
//
//  Created by Prakhar Parakh on 27/07/24.
//

import SwiftUI

struct BillInput: View {
  @State var billAmount: Double?
  @State var tipCalculatorViewModel: TipCalculatorViewModel?
  var body: some View {
    VStack(alignment: .center) {
      Text("Enter Bill Amount")
        .font(.title2)
        .bold()

      TextField("Amount", value: $billAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
        .keyboardType(.decimalPad)
        .scrollDismissesKeyboard(.immediately)
        .tint(.green)
        .frame(width: 150)
        .padding()
        .background(
          RoundedRectangle(cornerRadius: 12)
            .stroke(.green)
        )
        .onSubmit {
          tipCalculatorViewModel?.billAmount = billAmount
        }
    }
    .padding()
  }
}

#Preview {
  BillInput()
}
