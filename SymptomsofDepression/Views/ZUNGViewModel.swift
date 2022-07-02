//
//  ZUNGViewModel.swift
//  DepressionSchool1
//
//  Created by William Allen on 6/6/21.
//

import Foundation

class ZUNGViewModel: ObservableObject, Identifiable {

  @Published var zungArray = [Int16](repeating: -1, count: 20)
  @Published var dateCreated: Date?
  @Published var totalscore: Int16 = 0
  func saveToManagedObjectContext() {
    let manager = PersistenceController.shared
    let zung = ZUNG(context: manager.container.viewContext)
    zung.answer1 = zungArray[0]
    zung.answer2 = zungArray[1]
    zung.answer3 = zungArray[2]
    zung.answer4 = zungArray[3]
    zung.answer5 = zungArray[4]
    zung.answer6 = zungArray[5]
    zung.answer7 = zungArray[6]
    zung.answer8 = zungArray[7]
    zung.answer9 = zungArray[8]
    zung.answer10 = zungArray[9]
    zung.answer11 = zungArray[10]
    zung.answer12 = zungArray[11]
    zung.answer13 = zungArray[12]
    zung.answer14 = zungArray[13]
    zung.answer15 = zungArray[14]
    zung.answer16 = zungArray[15]
    zung.answer17 = zungArray[16]
    zung.answer18 = zungArray[17]
    zung.answer19 = zungArray[18]
    zung.answer20 = zungArray[19]
    zung.dateCreated = dateCreated
    zung.totalscore = totalscore
    manager.save()
  }
}
