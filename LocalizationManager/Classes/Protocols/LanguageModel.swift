//
//  LanguageModel.swift
//  TranslationManager
//
//  Created by Dominik Hadl on 18/10/2018.
//  Copyright © 2018 Nodes. All rights reserved.
//

import Foundation

public protocol LanguageModel: Codable {
    var locale: Locale { get }
    var isDefault: Bool { get }
    var isBestFit: Bool { get }
}
