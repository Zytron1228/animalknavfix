//
//  ScalingVars.swift
//  Pets-Gibby2
//
//  Created by PMStudent on 11/16/21.
//

import Foundation
import SwiftUI

public struct ScalingVars {
    
    // Screen width.
    public var screenWidth: CGFloat {
        return UIScreen.main.bounds.width// + 25
    }
    
    // Screen height.
    public var screenHeight: CGFloat {
        return UIScreen.main.bounds.height// + 50
    }

}

// Example: .frame(width: screenWidth + 25, height: screenHeight + 50)
// You can add or subtract to get better effects
