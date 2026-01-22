//
//  PrayerTimeCalculationMethod.swift
//  iPray
//
//  Created by Mohamed Shimy on Sat 16 Apr, 2022.
//  Copyright © 2022 Mohamed Shimy. All rights reserved.
//

import Foundation

public enum PrayerTimeCalculationMethod {
    
    case mwl
    case isna
    case egypt
    case ummAlQura
    case karachi
    case diyanet
    case russia
    case uiof
    case luwtc
    case mcw
    case icna
    case ica
    
    case dubai
    case qatar
    case kuwait
    case oman
    case jordan
    case sudan
    
    case morocco
    case algeria
    case tunisia
    case libya
    
    case muis
    case jakim
    case indonesia
    case brunei
    
    case bangladesh
    case southAfrica
    
    var parameters: [Double] {
        switch self {
        case .mwl: return [18.0, 1, 0, 0, 17.0]
        case .isna: return [15.0, 1, 0, 0, 15.0]
        case .egypt: return [19.5, 1, 0, 0, 17.5]
        case .ummAlQura: return [18.5, 1, 0, 1, 90.0]   // Isha = 90 min (Ramadan often 120)
        case .karachi: return [18.0, 1, 0, 0, 18.0]
        case .diyanet: return [18.0, 1, 0, 0, 17.0]
        case .russia: return [16.0, 1, 0, 0, 15.0]

        case .dubai: return [18.2, 1, 0, 0, 18.2]
        case .qatar: return [18.0, 1, 0, 0, 18.0]
        case .kuwait: return [18.0, 1, 0, 0, 18.0]
        case .oman: return [18.0, 1, 0, 0, 18.0]
        case .jordan: return [18.0, 1, 0, 0, 18.0]
        case .sudan: return [18.0, 1, 0, 0, 18.0]

        case .morocco: return [19.0, 1, 0, 0, 17.0]
        case .algeria: return [18.0, 1, 0, 0, 17.0]
        case .tunisia: return [18.0, 1, 0, 0, 18.0]
        case .libya: return [18.0, 1, 0, 0, 18.0]

        case .muis: return [20.0, 1, 0, 0, 18.0]
        case .jakim: return [20.0, 1, 0, 0, 18.0]
        case .indonesia: return [20.0, 1, 0, 0, 18.0]
        case .brunei: return [20.0, 1, 0, 0, 18.0]

        case .bangladesh: return [18.0, 1, 0, 0, 18.0]
        case .southAfrica: return [18.0, 1, 0, 0, 17.0]

        case .uiof: return [12.0, 1, 0, 0, 12.0]
        case .luwtc: return [18.0, 1, 0, 0, 17.0]
        case .mcw: return [18.0, 1, 0, 0, 17.0]
        case .icna: return [15.0, 1, 0, 0, 15.0]
        case .ica: return [15.0, 1, 0, 0, 15.0]
        }
    }
}

extension PrayerTimeCalculationMethod: CaseIterable { }

extension PrayerTimeCalculationMethod: CustomStringConvertible {
    
    public var description: String {
        let rawValue =
        switch self {
        case .mwl: "mwl"
        case .isna: "isna"
        case .egypt: "egypt"
        case .ummAlQura: "ummAlQura"
        case .karachi: "karachi"
        case .diyanet: "diyanet"
        case .russia: "russia"
        case .uiof: "uiof"
        case .luwtc: "luwtc"
        case .mcw: "mcw"
        case .icna: "icna"
        case .ica: "ica"
        case .dubai: "dubai"
        case .qatar: "qatar"
        case .kuwait: "kuwait"
        case .oman: "oman"
        case .jordan: "jordan"
        case .sudan: "sudan"
        case .morocco: "morocco"
        case .algeria: "algeria"
        case .tunisia: "tunisia"
        case .libya: "libya"
        case .muis: "muis"
        case .jakim: "jakim"
        case .indonesia: "indonesia"
        case .brunei: "brunei"
        case .bangladesh: "bangladesh"
        case .southAfrica: "southAfrica"
        }
        
        return NSLocalizedString(
            "prayertime.calculationmethod.\(rawValue)",
            bundle: .module,
            comment: ""
        )
    }
}

extension PrayerTimeCalculationMethod: CustomDebugStringConvertible {
    
    public var debugDescription: String { description }
}
