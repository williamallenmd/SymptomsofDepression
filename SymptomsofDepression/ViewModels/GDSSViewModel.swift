//
//  GDSSViewModel.swift
//  DepressionSchool2
//
//  Created by William Allen on 11/19/21.
//

import Foundation

class GDSSViewModel: ObservableObject, Identifiable {

  @Published var gdssArray = [Int16](repeating: -1, count: 15)
  @Published var dateCreated: Date?
  @Published var totalscore: Int16 = 0
  
  func saveToManagedObjectContext() {
    let manager = PersistenceController.shared
    let gdss = GDSS(context: manager.container.viewContext)
    
    gdss.answer1 = gdssArray[0]
    gdss.answer2 = gdssArray[1]
    gdss.answer3 = gdssArray[2]
    gdss.answer4 = gdssArray[3]
    gdss.answer5 = gdssArray[4]
    gdss.answer6 = gdssArray[5]
    gdss.answer7 = gdssArray[6]
    gdss.answer8 = gdssArray[7]
    gdss.answer9 = gdssArray[8]
    gdss.answer10 = gdssArray[9]
    gdss.answer11 = gdssArray[10]
    gdss.answer12 = gdssArray[11]
    gdss.answer13 = gdssArray[12]
    gdss.answer14 = gdssArray[13]
    gdss.answer15 = gdssArray[14]
    gdss.dateCreated = dateCreated
    gdss.totalscore = totalscore
    manager.save()
  }
}
