//
//  PhotosDeleteTests.swift
//  PhotosUITests
//
//  Created by Andrew Crawford on 05/09/2022.
//

import XCTest

class PhotosDeleteTests: XCTestCase {
    private let appHelper = AppHelper()
    private var app: XCUIApplication {appHelper.app}
    private let photos = Photos()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        // Launch Photos application
        app.launch()
    }
    
    func testDeletingPhoto() throws {
        photos.isDisplayed()
        photos.selectFirstPhotoInGrid()
        photos.deletePhoto()
        photos.confirmDeletion()
        photos.navigateBackToAllPhotos()
        photos.assertPhotoDeletedFromUI()
    }
}
