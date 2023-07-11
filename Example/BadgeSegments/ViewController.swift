//
//  ViewController.swift
//  BadgeSegments
//
//  Created by morteza.ghrdi@gmail.com on 09/22/2019.
//  Copyright (c) 2019 morteza.ghrdi@gmail.com. All rights reserved.
//

import UIKit
import BadgeSegments
class ViewController: UIViewController, BadgeSegmentDelegate {

    @IBOutlet weak var badgeSegment: BadgeSegments!
    override func viewDidLoad() {
        super.viewDidLoad()


        let items = [SegmentItem(title: "New Messages",isSelected: false,badgeNumber: -1,font: UIFont (name: "NexaRegular", size: 16)),
                     SegmentItem(title: "Messages",isSelected: true,font: UIFont (name: "NexaRegular", size: 16))]
        badgeSegment.appearence = .underlined
        badgeSegment.delegate = self
        badgeSegment.setUpSegments(with: items)
        badgeSegment.setSelected(inIndex: 0)
    }
    func didSelectSegment(with index: Int) {
        print(index)
    }
    
    
    @IBAction func changeValues(_ sender: Any) {
        badgeSegment.setBadgeNumber(inIndex: 1, badgeNum: 12)
    }
    
    @IBAction func removeBadge(_ sender: Any) {
        badgeSegment.removeBadgeNumber(inIndex: 0)
    }
    
}
