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
    private let photosGrid = PhotosGrid()
    private let photoDetail = PhotoDetail()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }
    
    func testDeletingPhoto() throws {
        photosGrid.isDisplayed()
        photosGrid.selectFirstPhotoInGrid()
        photoDetail.isDisplayed()
        photoDetail.deletePhoto()
        photoDetail.confirmDeletion()
        photoDetail.navigateBackToPhotosGrid()
        photosGrid.assertPhotoDeletedFromUI()
    }
}
