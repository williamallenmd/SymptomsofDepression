//
//  PHQ9ViewModel.swift
//  DepressionSchool1
//
//  Created by William Allen on 6/5/21.
//

import Foundation

class PHQ9ViewModel: ObservableObject, Identifiable {
    
    @Published var phq9Array = [Int16](repeating: -1, count: 10)
    @Published var userComment: String = ""
    @Published var dateCreated: Date = Date(timeIntervalSinceReferenceDate: 0.0)
    @Published var totalscore: Int16 = 0
    
    func saveToManagedObjectContext() {
        let manager = PersistenceController.shared
        let phq9 = PHQ9(context: manager.container.viewContext)
        phq9.answer1 = phq9Array[0]
        phq9.answer2 = phq9Array[1]
        phq9.answer3 = phq9Array[2]
        phq9.answer4 = phq9Array[3]
        phq9.answer5 = phq9Array[4]
        phq9.answer6 = phq9Array[5]
        phq9.answer7 = phq9Array[6]
        phq9.answer8 = phq9Array[7]
        phq9.answer9 = phq9Array[8]
        phq9.answer10 = phq9Array[9]
        phq9.userComment = userComment
        phq9.dateCreated = dateCreated
        phq9.totalscore = totalscore
        manager.save()
    }
}
