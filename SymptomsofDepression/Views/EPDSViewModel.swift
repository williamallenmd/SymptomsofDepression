//
//  EPDSViewModel.swift
//  DepressionSchool1
//
//  Created by William Allen on 6/6/21.
//

import Foundation

class EPDSViewModel: ObservableObject, Identifiable {

  @Published var epdsArray = [Int16](repeating: -1, count: 10)
  @Published var dateCreated: Date?
  @Published var totalscore: Int16 = 0
  func saveToManagedObjectContext() {
    let manager = PersistenceController.shared
    let epds = EPDS(context: manager.container.viewContext)
    epds.answer1 = epdsArray[0]
    epds.answer2 = epdsArray[1]
    epds.answer3 = epdsArray[2]
    epds.answer4 = epdsArray[3]
    epds.answer5 = epdsArray[4]
    epds.answer6 = epdsArray[5]
    epds.answer7 = epdsArray[6]
    epds.answer8 = epdsArray[7]
    epds.answer9 = epdsArray[8]
    epds.answer10 = epdsArray[9]
    epds.dateCreated = dateCreated
    epds.totalscore = totalscore
    manager.save()
  }
}
