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
    var addButton: UIButton!
    
    // MARK: - Init
    
    convenience init(parentView: UIView) {
        self.init()
        self.parentView = parentView

        parentView.backgroundColor = Constants.BackgroundColor
        
        parentView.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        let widthCon = NSLayoutConstraint(item: self, attribute: .Width, relatedBy: .Equal, toItem: parentView, attribute: .Width, multiplier: 1, constant: 0)
        let heightCon = NSLayoutConstraint(item: self, attribute: .Height, relatedBy: .Equal, toItem: parentView, attribute: .Height, multiplier: 1, constant: 0)
        parentView.addConstraints([widthCon, heightCon])
        
        initSubviews()
    }
    
    private func initSubviews() {
        initSearchButton()
        initAddButton()
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
    
    private func initAddButton() {
        addButton = UIButton(type: UIButtonType.System)
        addButton.setTitle(Constants.AddButtonTitle, forState: UIControlState.Normal)
        
        self.addSubview(addButton)
        
        addButton.translatesAutoresizingMaskIntoConstraints = false
        let centerYCon = NSLayoutConstraint(item: addButton, attribute: .CenterY, relatedBy: .Equal, toItem: searchButton, attribute: .CenterY, multiplier: 1, constant: 0)
        let trailingCon = NSLayoutConstraint(item: addButton, attribute: .Trailing, relatedBy: .Equal, toItem: self, attribute: .Trailing, multiplier: 1, constant: Constants.AddButtonTrailingGap)
        self.addConstraints([centerYCon, trailingCon])
    }
    
    // MARK: - Constants
    
    struct Constants {
        static let BackgroundColor = UIColor.whiteColor()
        
        static let SearchButtonTitle = "Search"
        static let SearchButtonTopGap = CGFloat(20)
        static let SearchButtonLeadingGap = CGFloat(20)
        
        static let AddButtonTitle = "Add"
        static let AddButtonTrailingGap = CGFloat(-20)
    }
}