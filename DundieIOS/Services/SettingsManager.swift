//
//  SettingsManager.swift
//  DundieIOS
//
//  Created by Oleksii Shevchenko Work on 09.09.2024.
//

import Foundation

enum ColorScheme: String {
    case light
    case dark
}

enum LanguagePreference: String {
    case en
    case ua
}

class SettingsManager {
    
    static let shared = SettingsManager()

    private init() {}

    private enum SettingsKey: String {
        case colorScheme
        case languagePreference
    }

    // Color Scheme (light/dark)
    @UserDefault(key: "colorScheme", defaultValue: ColorScheme.light)
        var colorScheme: ColorScheme

    // User Language (en/ua)
    @UserDefault(key: "languagePreference", defaultValue: LanguagePreference.en)
    var languagePreference: LanguagePreference
}
