//
//  PersistenceController.swift
//  DepressionSchool1
//
//  Created by William Allen on 6/6/21.
//

import Foundation
import CoreData

struct PersistenceController {
  static let shared = PersistenceController()
  let container: NSPersistentContainer
  private init() {
    container = NSPersistentCloudKitContainer(name: "Model")
    container.loadPersistentStores {(description, error) in
      if let error = error {
        fatalError("Failed to load persistent stores: \(error)")
      }
    }
    container.viewContext.automaticallyMergesChangesFromParent = true
    container.viewContext.mergePolicy = NSMergeByPropertyStoreTrumpMergePolicy
  }
  func save() {
    let context = container.viewContext
    if context.hasChanges {
      do {
        try container.viewContext.save()
      } catch {
        print("Failed to save data: \(error)")
      }
    }
  }
  func fetchPHQ9() -> [PHQ9] {
    let fetchRequest: NSFetchRequest<PHQ9> = PHQ9.fetchRequest()
    do {
      return try container.viewContext.fetch(fetchRequest)
    } catch {
      return []
    }
  }
  func fetchZUNG() -> [ZUNG] {
    let fetchRequest: NSFetchRequest<ZUNG> = ZUNG.fetchRequest()
    do {
      return try container.viewContext.fetch(fetchRequest)
    } catch {
      return []
    }
  }
  func fetchCESD() -> [CESD] {
    let fetchRequest: NSFetchRequest<CESD> = CESD.fetchRequest()
    do {
      return try container.viewContext.fetch(fetchRequest)
    } catch {
      return []
    }
  }
  func fetchHADS() -> [HADS] {
    let fetchRequest: NSFetchRequest<HADS> = HADS.fetchRequest()
    do {
      return try container.viewContext.fetch(fetchRequest)
    } catch {
      return []
    }
  }
  func fetchGDS() -> [GDS] {
    let fetchRequest: NSFetchRequest<GDS> = GDS.fetchRequest()
    do {
      return try container.viewContext.fetch(fetchRequest)
    } catch {
      return []
    }
  }
  func fetchEPDS() -> [EPDS] {
    let fetchRequest: NSFetchRequest<EPDS> = EPDS.fetchRequest()
    do {
      return try container.viewContext.fetch(fetchRequest)
    } catch {
      return []
    }
  }
  func fetchMDI() -> [MDI] {
    let fetchRequest: NSFetchRequest<MDI> = MDI.fetchRequest()
    do {
      return try container.viewContext.fetch(fetchRequest)
    } catch {
      return []
    }
  }
  func deletePHQ9(phq9: PHQ9) {
    container.viewContext.delete(phq9)
    do {
      try container.viewContext.save()
    } catch {
      container.viewContext.rollback()
      print("Failed to save new context \(error.localizedDescription)")
    }
  }
  func deleteZUNG(zung: ZUNG) {
    container.viewContext.delete(zung)
    do {
      try container.viewContext.save()
    } catch {
      container.viewContext.rollback()
      print("Failed to save new context \(error.localizedDescription)")
    }
  }
  func deleteCESD(cesd: CESD) {
    container.viewContext.delete(cesd)
    do {
      try container.viewContext.save()
    } catch {
      container.viewContext.rollback()
      print("Failed to save new context \(error.localizedDescription)")
    }
  }
  func deleteHADS(hads: HADS) {
    container.viewContext.delete(hads)
    do {
      try container.viewContext.save()
    } catch {
      container.viewContext.rollback()
      print("Failed to save new context \(error.localizedDescription)")
    }
  }
  func deleteGDS(gds: GDS) {
    container.viewContext.delete(gds)
    do {
      try container.viewContext.save()
    } catch {
      container.viewContext.rollback()
      print("Failed to save new context \(error.localizedDescription)")
    }
  }
  func deleteEPDS(epds: EPDS) {
    container.viewContext.delete(epds)
    do {
      try container.viewContext.save()
    } catch {
      container.viewContext.rollback()
      print("Failed to save new context \(error.localizedDescription)")
    }
  }
  func deleteMDI(mdi: MDI) {
    container.viewContext.delete(mdi)
    do {
      try container.viewContext.save()
    } catch {
      container.viewContext.rollback()
      print("Failed to save new context \(error.localizedDescription)")
    }
  }
}

/*
 
 NAMING CONVENTIONS FOR MVVM:
 
 MODEL:
 
 PHQ9
 ZUNG
 CESD
 GDS
 HADS
 EPDS
 MDI
 
 
 VIEW MODEL:
 
 phq9Array
 zungArray
 cesdArray
 gdsArray
 hadsArray
 epdsArray
 mdiArray
 
 
 VIEWS:
 
 PHQ9View
 ZUNGView
 CESDView
 GDSView
 HADSView
 EPDSView
 
 */
