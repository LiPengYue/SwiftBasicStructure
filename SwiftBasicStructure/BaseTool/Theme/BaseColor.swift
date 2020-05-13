//
//  BaseColor.swift
//  SwiftBasicStructure
//
//  Created by 李鹏跃 on 2020/5/13.
//  Copyright © 2020 13lipengyue. All rights reserved.
//

import UIKit

class BaseColor: UIColor {
    
    static func clear() -> BaseColor {
        return BaseColor.init(white: 0, alpha: 0);
    }
    
    static func hex(_ string: String?, alpha: CGFloat = 1.0) -> BaseColor {
        guard var hex = string else {
            return clear()
        }
        
        if (hex.hasPrefix("#")) {
            hex = String(hex.dropFirst())
        }
        
        if(hex.hasPrefix("0x")) {
            let indexN = hex.index(hex.startIndex, offsetBy: 2)
            let indexM = hex.index(hex.startIndex, offsetBy: hex.count)
            hex = String(hex[indexN..<indexM])
        }
        
        guard hex.count == 3 || hex.count == 6  else {
            return clear()
        }
        
        if hex.count == 3 {
            for (indec, char) in hex.enumerated() {
                hex.insert(char, at: hex.index(hex.startIndex, offsetBy: indec * 2))
            }
        }
        
        let red = CGFloat((Int(hex, radix: 16)! >> 16) & 0xFF) / 255.0
        let green = CGFloat((Int(hex, radix: 16)! >> 8) & 0xFF) / 255.0
        let blue = CGFloat((Int(hex, radix: 16)!) & 0xFF) / 255.0
        
        return BaseColor.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
