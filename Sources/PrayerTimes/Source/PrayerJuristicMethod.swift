//
//  PrayerJuristicMethod.swift
//  iPray
//
//  Created by Mohamed Shimy on Sat 16 Apr, 2022.
//  Copyright © 2022 Mohamed Shimy. All rights reserved.
//

import Foundation

///
/// Juristic Method
///
public enum PrayerJuristicMethod: Int {
    
    ///
    /// Shafii (standard)
    ///
    case shafii = 1
    
    ///
    /// Hanafi
    ///
    case hanafi = 2
}

extension PrayerJuristicMethod: CaseIterable { }
