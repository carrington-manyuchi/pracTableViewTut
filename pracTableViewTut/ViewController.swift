//
//  ViewController.swift
//  pracTableViewTut
//
//  Created by DA MAC M1 157 on 2023/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    let images = [
        UIImage(named: "shoesimage8"),
        UIImage(named: "shoesimage4.jpg"),
        UIImage(named: "shoesimage5.jpg"),
        UIImage(named: "shoesimage1.jpg"),
        UIImage(named: "shoesimage7.jpg"),
        UIImage(named: "shoesimage8.jpg"),
        UIImage(named: "shoesimage4.jpg"),
        UIImage(named: "shoesimage3.jpg"),
        UIImage(named: "shoesimage2.jpg"),
        UIImage(named: "shoesimage6.jpg")
    ]
    
    private let homeTableView: UITableView = {
        let tableView = UITableView()
        tableView.allowsSelection = true
        tableView.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    public func setupUI() {
        view.backgroundColor = .red
        view.addSubview(homeTableView)
        homeTableView.frame = view.bounds
        homeTableView.delegate = self
        homeTableView.dataSource = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier, for: indexPath) as? CustomCell else {
            fatalError("Could not dequeue custom cell in homeView Controller")
        }

        let image = images[indexPath.row]
        cell.productImage.image = image
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }
}

