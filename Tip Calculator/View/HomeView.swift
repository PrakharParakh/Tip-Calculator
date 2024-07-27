//
//  HomeView.swift
//  Tip Calculator
//
//  Created by Prakhar Parakh on 27/07/24.
//

import SwiftUI

struct HomeView: View {
  @StateObject var tipCalulatorViewModel = TipCalculatorViewModel()

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
            
            tipCalulatorViewModel.calculateTipAmount()
            
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
          Button {
            
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
