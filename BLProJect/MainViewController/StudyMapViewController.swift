//
//  StudyMapViewController.swift
//  BLProJect
//
//  Created by Kim dohyun on 2021/03/06.
//  Copyright © 2021 김도현. All rights reserved.
//

import UIKit
import NMapsMap


class StudyMapViewController: UIViewController {
    
    
    @IBOutlet weak var StudyMapView: NMFMapView!
    @IBOutlet weak var StudyFilterView: UIView!
    @IBOutlet weak var StudyFilterBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavigationLayoutInit()
        self.setStudyFilterView()
    }
    
    private func setNavigationLayoutInit(){
        let navigationFirstBtn = UIButton()
        let navigationSecondBtn = UIButton()
        let navigationButtonItem = UIBarButtonItem(customView: navigationFirstBtn)
        let navigationButtonItemtwo = UIBarButtonItem(customView: navigationSecondBtn)
        navigationFirstBtn.setAttributedTitle(NSAttributedString(attributedString: NSAttributedString(string: "서울시 송파구", attributes: [NSAttributedString.Key.font : UIFont(name: "AppleSDGothicNeo-SemiBold", size: 16),NSAttributedString.Key.kern : -0.88])), for: .normal)
        navigationFirstBtn.setTitleColor(UIColor.black, for: .normal)
        navigationSecondBtn.setAttributedTitle(NSAttributedString(string: "성남시 분당구", attributes: [NSAttributedString.Key.font : UIFont(name: "AppleSDGothicNeo-SemiBold", size: 16)]), for: .normal)
        navigationSecondBtn.setTitleColor(UIColor(red: 223/255, green: 223/255, blue: 223/255, alpha: 1.0), for: .normal)
        self.navigationItem.leftBarButtonItems = [navigationButtonItem,navigationButtonItemtwo]
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent = false
    }
    
    private func setStudyFilterView(){
        self.StudyFilterView.backgroundColor = UIColor(red: 249/255, green: 250/255, blue: 250/255, alpha: 1.0)
        self.StudyFilterView.layer.borderWidth = 1
        self.StudyFilterView.layer.borderColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1.0).cgColor
        self.StudyFilterBtn.setAttributedTitle(NSAttributedString(string: "UX/UI", attributes: [NSAttributedString.Key.font : UIFont(name: "AppleSDGothicNeo-Medium", size: 14),NSAttributedString.Key.kern : -0.77]), for: .normal)
        self.StudyFilterBtn.setTitleColor(UIColor.white, for: .normal)
        self.StudyFilterBtn.backgroundColor = UIColor(red: 255/255, green: 118/255, blue: 99/255, alpha: 1.0)
        self.StudyFilterBtn.layer.cornerRadius = 4
        self.StudyFilterBtn.layer.masksToBounds = true
    }
}