//
//  CESDViewModel.swift
//  DepressionSchool1
//
//  Created by William Allen on 6/6/21.
//

import Foundation

class CESDViewModel: ObservableObject, Identifiable {

  @Published var cesdArray = [Int16](repeating: -1, count: 20)
  @Published var dateCreated: Date?
  @Published var totalscore: Int16 = 0
  func saveToManagedObjectContext() {
    let manager = PersistenceController.shared
    let cesd = CESD(context: manager.container.viewContext)
    cesd.answer1 = cesdArray[0]
    cesd.answer2 = cesdArray[1]
    cesd.answer3 = cesdArray[2]
    cesd.answer4 = cesdArray[3]
    cesd.answer5 = cesdArray[4]
    cesd.answer6 = cesdArray[5]
    cesd.answer7 = cesdArray[6]
    cesd.answer8 = cesdArray[7]
    cesd.answer9 = cesdArray[8]
    cesd.answer10 = cesdArray[9]
    cesd.answer11 = cesdArray[10]
    cesd.answer12 = cesdArray[11]
    cesd.answer13 = cesdArray[12]
    cesd.answer14 = cesdArray[13]
    cesd.answer15 = cesdArray[14]
    cesd.answer16 = cesdArray[15]
    cesd.answer17 = cesdArray[16]
    cesd.answer18 = cesdArray[17]
    cesd.answer19 = cesdArray[18]
    cesd.answer20 = cesdArray[19]
    cesd.dateCreated = dateCreated
    cesd.totalscore = totalscore
    manager.save()
  }
}
