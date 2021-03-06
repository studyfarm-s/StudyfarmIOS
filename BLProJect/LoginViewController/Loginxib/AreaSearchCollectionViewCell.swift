//
//  AreaSearchCollectionViewCell.swift
//  BLProJect
//
//  Created by Kim dohyun on 2021/03/24.
//  Copyright © 2021 김도현. All rights reserved.
//

import UIKit

class AreaSearchCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var areaTitleButton: UIButton!
    override var isSelected: Bool {
            didSet {
                if isSelected {
                    self.areaTitleButton.isSelected = true
                    self.areaTitleButton.layer.borderWidth = 1
                    self.areaTitleButton.layer.borderColor = UIColor(red: 255/255, green: 118/255, blue: 99/255, alpha: 1.0).cgColor
                    self.areaTitleButton.setTitleColor(UIColor(red: 255/255, green: 118/255, blue: 99/255, alpha: 1.0), for: .selected)
                } else {
                    self.areaTitleButton.isSelected = false
                    self.areaTitleButton.layer.borderWidth = 0
                    self.areaTitleButton.layer.borderColor = UIColor.clear.cgColor
                    self.areaTitleButton.setAttributedTitle(NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont(name: "AppleSDGothicNeo-Medium", size: 14)]), for: .normal)
                }
            }
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setInitLayout()
    }
    
    private func setInitLayout() {
        self.areaTitleButton.setAttributedTitle(NSAttributedString(string: "", attributes: [NSAttributedString.Key.font: UIFont(name: "AppleSDGothicNeo-Medium", size: 14)]), for: .normal)
        self.areaTitleButton.setTitleColor(UIColor(red: 61/255, green: 61/255, blue: 61/255, alpha: 1.0), for: .normal)
        self.areaTitleButton.layer.cornerRadius = 15
        self.areaTitleButton.layer.masksToBounds = true
        self.contentView.isUserInteractionEnabled = false
    }
    public func setSelectLayout(indexPath : Int) {
        if indexPath >= 3 {
            self.areaTitleButton.setTitleColor(UIColor(red: 223/255, green: 223/255, blue: 223/255, alpha: 1.0), for: .selected)
        }
    }
    
}
