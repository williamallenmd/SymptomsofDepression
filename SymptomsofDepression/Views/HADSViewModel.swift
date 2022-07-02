//
//  HADSViewModel.swift
//  DepressionSchool1
//
//  Created by William Allen on 6/6/21.
//

import Foundation

class HADSViewModel: ObservableObject, Identifiable {

  @Published var hadsArray = [Int16](repeating: -1, count: 14)
  @Published var dateCreated: Date?
  @Published var totalscore: Int16 = 0
  func saveToManagedObjectContext() {
    let manager = PersistenceController.shared
    let hads = HADS(context: manager.container.viewContext)
    hads.answer1 = hadsArray[0]
    hads.answer2 = hadsArray[1]
    hads.answer3 = hadsArray[2]
    hads.answer4 = hadsArray[3]
    hads.answer5 = hadsArray[4]
    hads.answer6 = hadsArray[5]
    hads.answer7 = hadsArray[6]
    hads.answer8 = hadsArray[7]
    hads.answer9 = hadsArray[8]
    hads.answer10 = hadsArray[9]
    hads.answer11 = hadsArray[10]
    hads.answer12 = hadsArray[11]
    hads.answer13 = hadsArray[12]
    hads.answer14 = hadsArray[13]
    hads.dateCreated = dateCreated
    hads.totalscore = totalscore
    manager.save()
  }
}
