//
//  PrimaryViewMatrix.swift
//  DepressionSchool2
//
//  Created by William Allen on 6/13/21.
//

import SwiftUI

struct PrimaryMatrixView: View {
  
  var body: some View {
    ScrollView {
      VStack{
        Text("Learn about depression").font(.body)
        //    Image("Image-1").resizable().frame(width: 150, height: 150)
        HStack {

          NavigationLink(
            destination: SymptomsMatrix(),
            label: {
              Navigate2(text: "Symptoms\n of\n Depression", textColor: .primary, boxColor: .color2)
            })
          NavigationLink(
            destination: RiskFactorsMatrix(),
            label: {
              Navigate2(text: "Depression\nRisk \nFactors", textColor: .primary, boxColor: .color3)
            })
        }
        HStack {
          NavigationLink(
            destination: ProtectiveFactorsMatrix(),
            label: {
              Navigate2(text: "Protection \nAgainst \nDepression", textColor: .primary, boxColor: .color4)
            })
          
          NavigationLink(
            destination: RatingScalesMatrix(),
            label: {
              Navigate2(text: "Depression\n Rating \nScales", textColor: .primary, boxColor: .color5)
            })

        }
        HStack {
          NavigationLink(
            destination: PreventionMatrix(),
            label: {
              Navigate2(text: "Depression\nPrevention\nStrategies", textColor: .primary, boxColor: .color7)
            })
          NavigationLink(
            destination: SelfHarmMatrix(),
            label: {
              Navigate2(text: "Depression\nAnd\nSelf-harm", textColor: .primary, boxColor: .color8)
            })

        }

        HStack {

          NavigationLink(
            destination: DummyView(),
            label: {
              Navigate2(text: "The \nQuiz ", textColor: .primary, boxColor: .color14)
            })
          
          NavigationLink(
            destination: DummyView(),
            label: {
              Navigate2(text: "Find \nHelp", textColor: .primary, boxColor: .color15)
            })
        }
      }
      Spacer()
    }
  }
}

struct PrimaryMatrixView_Previews: PreviewProvider {
  static var previews: some View {
    PrimaryMatrixView()
  }
}
