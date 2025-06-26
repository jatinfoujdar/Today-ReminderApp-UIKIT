//
//  ViewController.swift
//  Today-UIKIT
//
//  Created by jatin foujdar on 10/06/25.
//

import UIKit

class ReminderListViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let listLayout = listLayout()
        collectionView.collectionViewLayout = listLayout
        
        let cellRegistration = UICollectionView.CellRegistration {
            (cell: UICollectionViewListCell, indexPath: IndexPath, itemIdentifier: String) in
            let reminder = Reminder.sampleData[indexPath.item]
        }
    }

    private func listLayout() -> UICollectionViewCompositionalLayout {
        var listConfiguration  = UICollectionLayoutListConfiguration(appearance: .grouped)
        listConfiguration.showsSeparators = false
        listConfiguration.backgroundColor = .clear
        return UICollectionViewCompositionalLayout.list(using: listConfiguration)
    }
}

