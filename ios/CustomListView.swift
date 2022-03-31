//
//  CustomListView.swift
//  RNUIcollectionViewListAppIOS
//
//  Created by Rahul Verma on 08/03/22.
//

import UIKit

class CustomListView: UIView {
  
  weak var listViewVC: CustomListViewVC?
  
  @objc var data: [String] = []
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
//  let names = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    if listViewVC == nil {
      embed()
    }
    else{
      listViewVC?.view.frame = bounds
    }
  }
  
   private func embed(){
    guard let parentVC = parentViewController else{
      return
    }
    
    
    let vc = CustomListViewVC.init()
    parentVC.addChild(vc)
    addSubview(vc.view)
    vc.view.frame = bounds
    self.listViewVC = vc
    
    
  }
}

extension UIView {
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
}





