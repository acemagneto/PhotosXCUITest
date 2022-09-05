//
//  PhotoDetail.swift
//  PhotosUITests
//
//  Created by Andrew Crawford on 05/09/2022.
//

import XCTest

class PhotoDetail: XCTestCase {
    private let appHelper = AppHelper()
    private var app: XCUIApplication {appHelper.app}
    private static let deleteButtonIdentifier = "Delete"
    private static let confirmDeletePhotoButtonIdentifier = "Delete Photo"
    private static let backButtonIdentifier = "All Photos"
    private static let editButtonIdentifier = "Edit"
    
    func deletePhoto() {
        XCTAssert(app.buttons[PhotoDetail.deleteButtonIdentifier].waitForExistence(timeout: appHelper.timeout))
        app.buttons[PhotoDetail.deleteButtonIdentifier].tap()
    }
    
    func confirmDeletion() {
        XCTAssert(app.buttons[PhotoDetail.confirmDeletePhotoButtonIdentifier].exists)
        app.buttons[PhotoDetail.confirmDeletePhotoButtonIdentifier].tap()
    }
    
    func navigateBackToPhotosGrid() {
        XCTAssert(app.buttons[PhotoDetail.backButtonIdentifier].exists)
        app.buttons[PhotoDetail.backButtonIdentifier].tap()
    }
    
    func isDisplayed() {
        XCTAssert(app.buttons[PhotoDetail.editButtonIdentifier].waitForExistence(timeout: appHelper.timeout))
    }
}
