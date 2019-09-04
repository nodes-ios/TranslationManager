//
//  TranslationRepository.swift
//  TranslationManager
//
//  Created by Dominik Hadl on 18/10/2018.
//  Copyright © 2018 Nodes. All rights reserved.
//

import Foundation

public typealias Result<T> = Swift.Result<T, Error>

public protocol TranslationRepository {
    func getLocalizationConfig<C>(acceptLanguage: String,
                                  lastUpdated: Date?,
                                  completion: @escaping (Result<[C]>) -> Void) where C: LocalizationModel
    func getTranslations<L>(localization: LocalizationModel,
                            acceptLanguage: String,
                            completion: @escaping (Result<TranslationResponse<L>>) -> Void) where L: LanguageModel
}

public protocol LocalizationContextRepository {
    func fetchPreferredLanguages() -> [String]
    func getLocalizationBundles() -> [Bundle]
    func fetchCurrentPhoneLanguage() -> String?
}
