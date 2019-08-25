//
//  HomeDatasourceController+navbar.swift
//  Twitter
//
//  Created by pennyworth on 8/25/19.
//  Copyright © 2019 punkundermyskin. All rights reserved.
//

import UIKit

extension HomeDatasourceController {
    func setupNavigationBarItems() {
        setupLeftNavItem()
        setupRightNavItems()
        setupRemainingNavItems()
    }
    
    private func setupRemainingNavItems() {
        let titleImageView = UIImageView(image: UIImage(named: "title_icon"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.widthAnchor.constraint(equalToConstant: 34).isActive = true
        titleImageView.heightAnchor.constraint(equalToConstant: 34).isActive = true
        titleImageView.contentMode = .scaleAspectFit
        
        navigationItem.titleView = titleImageView
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
    }
    
    private func setupLeftNavItem() {
        let followButton = UIButton(type: .system)
        followButton.setImage(UIImage(named: "follow")?.withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        followButton.widthAnchor.constraint(equalToConstant: 34).isActive = true
        followButton.heightAnchor.constraint(equalToConstant: 34).isActive = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
    }
    
    private func setupRightNavItems() {
        let searchButton = UIButton(type: .system)
        searchButton.setImage(UIImage(named: "search")?.withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        searchButton.widthAnchor.constraint(equalToConstant: 34).isActive = true
        searchButton.heightAnchor.constraint(equalToConstant: 34).isActive = true
        
        let composeButton = UIButton(type: .system)
        composeButton.setImage(UIImage(named: "compose")?.withRenderingMode(.alwaysOriginal), for: .normal)
        composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        composeButton.widthAnchor.constraint(equalToConstant: 34).isActive = true
        composeButton.heightAnchor.constraint(equalToConstant: 34).isActive = true
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeButton), UIBarButtonItem(customView: searchButton)]
    }
}

