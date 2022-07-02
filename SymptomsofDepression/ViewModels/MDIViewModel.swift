//
//  MDIViewModel.swift
//  DepressionSchool2
//
//  Created by William Allen on 11/9/21.
//

import Foundation

class MDIViewModel: ObservableObject, Identifiable {

  @Published var mdiArray = [Int16](repeating: -1, count: 13)
  @Published var dateCreated: Date?
  @Published var totalscore: Int16 = 0
  func saveToManagedObjectContext() {
    let manager = PersistenceController.shared
    let mdi = MDI(context: manager.container.viewContext)
    mdi.answer1 = mdiArray[0]
    mdi.answer2 = mdiArray[1]
    mdi.answer3 = mdiArray[2]
    mdi.answer4 = mdiArray[3]
    mdi.answer5 = mdiArray[4]
    mdi.answer6 = mdiArray[5]
    mdi.answer7 = mdiArray[6]
    mdi.answer8a = mdiArray[7]
    mdi.answer8b = mdiArray[8]
    mdi.answer9a = mdiArray[9]
    mdi.answer9b = mdiArray[10]
    mdi.answer10a = mdiArray[11]
    mdi.answer10b = mdiArray[12]
    mdi.dateCreated = dateCreated
    mdi.totalscore = totalscore
    manager.save()
  }
}
