//
//  MyCustomViewManager.swift
//  RNUIcollectionViewListAppIOS
//
//  Created by Rahul Verma on 16/03/22.
//

@objc (RCTMyCustomViewManager)
class RCTMyCustomViewManager: RCTViewManager {

  override static func requiresMainQueueSetup() -> Bool {
    return true
  }

  override func view() -> UIView! {
    return CustomListView()
  }

}
