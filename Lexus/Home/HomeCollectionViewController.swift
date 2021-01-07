//
//  HomeCollectionViewController.swift
//  Lexus
//
//  Created by harton on 2021/1/7.
//

import UIKit


class HomeCollectionViewController: UICollectionViewController {
    
    let adapter = HomeAdapter()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.register(cellWithClass: HomeItemCollectionViewCell.self)

        self.title = "首页"
        // Do any additional setup after loading the view.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return adapter.dataSource.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withClass: HomeItemCollectionViewCell.self, for: indexPath)
    
        cell.icon.image = UIImage(named: adapter.dataSource[indexPath.item].icon)
        
        cell.title.text = adapter.dataSource[indexPath.item].title
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let item = adapter.dataSource[indexPath.item]
        performSegue(withIdentifier: item.segue, sender: item)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let type = sender as? HomeBillItem,let des = segue.destination as? SuperLottoViewController else {
            return
        }
        des.billItem = type
    }

    
}

extension HomeCollectionViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (screenWidth - 50) / 4 - 2, height:(screenWidth - 50) / 4 - 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 10, left: 10, bottom: 10, right: 10)
    }
}
