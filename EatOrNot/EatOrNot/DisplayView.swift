//
//  DisplayView.swift
//  EatOrNot
//
//  Created by Xinxing Jiang on 2/5/16.
//  Copyright © 2016 e. All rights reserved.
//

import UIKit

class DisplayView: UIView {
    
    weak var parentView: UIView!
    
    // MARK: - Subviews
    
    var searchButton: UIButton!
    
    // MARK: - Init
    
    convenience init(parentView: UIView) {
        self.init()
        self.parentView = parentView
        parentView.addSubview(self)
        parentView.backgroundColor = Constants.BackgroundColor
        initSubviews()
    }
    
    private func initSubviews() {
        initSearchButton()
    }
    
    private func initSearchButton() {
        searchButton = UIButton(type: UIButtonType.System)
        searchButton.setTitle(Constants.SearchButtonTitle, forState: UIControlState.Normal)
        
        self.addSubview(searchButton)
        
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        let topCon = NSLayoutConstraint(item: searchButton, attribute: .Top, relatedBy: .Equal, toItem: self, attribute: .Top, multiplier: 1, constant: Constants.SearchButtonTopGap)
        let leadingCon = NSLayoutConstraint(item: searchButton, attribute: .Leading, relatedBy: .Equal, toItem: self, attribute: .Leading, multiplier: 1, constant: Constants.SearchButtonLeadingGap)
        self.addConstraints([topCon, leadingCon])
    }
    
    // MARK: - Constants
    
    struct Constants {
        static let BackgroundColor = UIColor.whiteColor()
        static let SearchButtonTitle = "Search"
        static let SearchButtonTopGap = CGFloat(20)
        static let SearchButtonLeadingGap = CGFloat(20)
    }
}