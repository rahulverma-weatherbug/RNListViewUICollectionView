//
//  CustomListViewVC.swift
//  RNUIcollectionViewListAppIOS
//
//  Created by Rahul Verma on 21/03/22.
//

import UIKit

class CustomListViewVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    private var collectionView: UICollectionView?
  
    var names:[String] = []
  
    override func viewDidLoad() {
      super.viewDidLoad()
      let layout = UICollectionViewFlowLayout()
      layout.scrollDirection = .vertical
      layout.minimumLineSpacing = 1
      layout.minimumInteritemSpacing = 1
      layout.itemSize = CGSize(width: (view.frame.size.width)-4, height: (view.frame.size.width/3)-4)

      collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
      guard let collectionView = collectionView else {
        return
      }
      collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
      collectionView.dataSource = self
      collectionView.delegate = self
      view.addSubview(collectionView)
      collectionView.frame = view.bounds

    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return names.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as! CustomCollectionViewCell
      cell.configure(label: names[indexPath.row])

      return cell
    }
  
}

