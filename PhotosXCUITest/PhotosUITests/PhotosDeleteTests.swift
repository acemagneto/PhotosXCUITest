//
//  PhotosDeleteTests.swift
//  PhotosUITests
//
//  Created by Andrew Crawford on 05/09/2022.
//

import XCTest

class PhotosDeleteTests: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    func testDeletingPhoto() throws {
        // Launch Photos application
        let photosApp = XCUIApplication(bundleIdentifier: "com.apple.mobileslideshow")
        photosApp.launch()
        // Delete a photo
        // Assert photo is indeed disappeared from the UI
    }
}
