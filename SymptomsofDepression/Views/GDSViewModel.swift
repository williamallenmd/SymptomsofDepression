//
//  GDSViewModel.swift
//  DepressionSchool1
//
//  Created by William Allen on 6/6/21.
//

import Foundation

class GDSViewModel: ObservableObject, Identifiable {

  @Published var gdsArray = [Int16](repeating: -1, count: 30)
  @Published var dateCreated: Date?
  @Published var totalscore: Int16 = 0
  func saveToManagedObjectContext() {
    let manager = PersistenceController.shared
    let gds = GDS(context: manager.container.viewContext)
    gds.answer1 = gdsArray[0]
    gds.answer2 = gdsArray[1]
    gds.answer3 = gdsArray[2]
    gds.answer4 = gdsArray[3]
    gds.answer5 = gdsArray[4]
    gds.answer6 = gdsArray[5]
    gds.answer7 = gdsArray[6]
    gds.answer8 = gdsArray[7]
    gds.answer9 = gdsArray[8]
    gds.answer10 = gdsArray[9]
    gds.answer11 = gdsArray[10]
    gds.answer12 = gdsArray[11]
    gds.answer13 = gdsArray[12]
    gds.answer14 = gdsArray[13]
    gds.answer15 = gdsArray[14]
    gds.answer16 = gdsArray[15]
    gds.answer17 = gdsArray[16]
    gds.answer18 = gdsArray[17]
    gds.answer19 = gdsArray[18]
    gds.answer20 = gdsArray[19]
    gds.answer11 = gdsArray[20]
    gds.answer12 = gdsArray[21]
    gds.answer13 = gdsArray[22]
    gds.answer14 = gdsArray[23]
    gds.answer15 = gdsArray[24]
    gds.answer16 = gdsArray[25]
    gds.answer17 = gdsArray[26]
    gds.answer18 = gdsArray[27]
    gds.answer19 = gdsArray[28]
    gds.answer20 = gdsArray[29]
    gds.dateCreated = dateCreated
    gds.totalscore = totalscore
    manager.save()
  }
}
