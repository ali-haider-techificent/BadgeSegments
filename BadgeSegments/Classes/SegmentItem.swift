//
//  SegmentItem.swift
//  BadgeSegment
//
//  Created by Morteza on 9/18/19.
//  Copyright © 2019 Morteza. All rights reserved.
//

import UIKit
protocol SegmentItems {
    var badgeNumber: Int { get set }
    var title: String { get set }
    var isSelected: Bool {get set}
    var font: UIFont? {get set}
}

public struct SegmentItem: SegmentItems {
    var title: String
    var isSelected: Bool
    var badgeNumber: Int
    var font: UIFont?
    
    public init(title:String, isSelected: Bool,badgeNumber: Int = 0,font: UIFont?) {
        self.title = title
        self.isSelected = isSelected
        self.badgeNumber = badgeNumber
        if let font = font{
            self.font = font
        }
    }

}
