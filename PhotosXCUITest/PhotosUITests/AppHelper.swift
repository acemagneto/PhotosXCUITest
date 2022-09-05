//
//  AppHelper.swift
//  PhotosUITests
//
//  Created by Andrew Crawford on 05/09/2022.
//

import XCTest

class AppHelper {
    let timeout: Double = 10
    var app: XCUIApplication {
        let photosApp = XCUIApplication(bundleIdentifier: "com.apple.mobileslideshow")
        return photosApp
    }
}
