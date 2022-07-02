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
            destination: RatingScalesMatrix(),
            label: {
              Navigate2(text: "Depression\n Rating \nScales", textColor: .primary, boxColor: .color5)
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
