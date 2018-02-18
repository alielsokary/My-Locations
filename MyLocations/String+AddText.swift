//
//  String+AddText.swift
//  MyLocations
//
//  Created by Ali on 2/18/18.
//  Copyright © 2018 mag. All rights reserved.
//

extension String {
    mutating func add(text: String?, separatedBy separator: String = "") {
        if let text = text {
            if !isEmpty {
                self += separator
            }
            self += text
        }
    }
}
