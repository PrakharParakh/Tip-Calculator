//
//  HomeView.swift
//  Tip Calculator
//
//  Created by Prakhar Parakh on 27/07/24.
//

import SwiftUI

struct HomeView: View {
  @StateObject var tipCalulatorViewModel = TipCalculatorViewModel()
  @Environment(\.modelContext) var modelContext

  var body: some View {
    
    NavigationStack {
      ZStack(alignment: .top) {
        Color.background
        
        VStack {
          CurvedLine()
            .fill(.green)
            .frame(height: 150)
            .padding(.bottom)
                   
          BillInput(tipCalculatorViewModel: tipCalulatorViewModel)
          
          PercentOptions(tipCalculatorViewModel: tipCalulatorViewModel)
          
          Button {
            
            if let _ = tipCalulatorViewModel.billAmount {
              tipCalulatorViewModel.calculateTipAmount()
              let tipHistory = TipHistory(tipAmount: tipCalulatorViewModel.tipAmount ?? 0, date: Date.now)
              modelContext.insert(tipHistory)
              do {
                try modelContext.save()
              } catch {
                // Handle error appropriately in your app
                print("Failed to save tip history: \(error)")
              }
            }
            
          } label: {
            Text("Calculate")
              .foregroundColor(.white)
              .padding()
              .background(
                RoundedRectangle(cornerRadius: 12)
                  .fill(.green)
                  .frame(width: 250)
              )
          }.padding(.top)
          
          if tipCalulatorViewModel.showResult {
            ResultView(tipAmount: tipCalulatorViewModel.tipAmount)
              .padding(.top)
          }
        }
      }
      .ignoresSafeArea()
      .toolbar {
        ToolbarItem(placement: .topBarTrailing) {
          NavigationLink {
            HistoryView()
          } label: {
            Image(systemName: "gear")
              .foregroundColor(.white)
          }
        }
      }
    }
  }
}

#Preview {
  HomeView()

}
