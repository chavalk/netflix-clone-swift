//
//  Extensions.swift
//  Netflix Clone
//
//  Created by Jose Garcia on 11/24/22.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
