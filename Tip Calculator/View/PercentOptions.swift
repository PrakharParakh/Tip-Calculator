//
//  PercentOptions.swift
//  Tip Calculator
//
//  Created by Prakhar Parakh on 27/07/24.
//

import SwiftUI

struct PercentOptions: View {
  var grid: [GridItem] = [
    .init(.flexible()),
    .init(.flexible()),
    .init(.flexible())
  ]
  var tipOptions: [String] = ["10 %", "15 %", "20 %", "25 %", "Custom Tip"]
  @State var selectedTipIndex = 1
  var body: some View {
    VStack {
      Text("Choose Tip Percent")
        .font(.title2)
        .bold()
      
      LazyVGrid(columns: grid, alignment: .center, spacing: 8) {
        ForEach(0..<tipOptions.count) { index in
          Text(tipOptions[index])
            .frame(minWidth: 80)
            .padding(.vertical)
            .padding(.horizontal)
            .animation(.bouncy(duration: 2), value: selectedTipIndex)
            .foregroundColor(selectedTipIndex == index ? .white : .inverted)
            .background(
              RoundedRectangle(cornerRadius: 12)
                .stroke(.green)
                .fill(selectedTipIndex == index ? .green : .background)
            )
            .onTapGesture {
              if selectedTipIndex != index {
                withAnimation(.linear(duration: 0.2)) {
                  selectedTipIndex = index
                }
              }
            }
        }
      }
    }
  }
}

#Preview {
  PercentOptions()
}
