//
//  PhotoDetail.swift
//  PhotosUITests
//
//  Created by Andrew Crawford on 05/09/2022.
//

import XCTest

class PhotoDetail {
    private let appHelper = AppHelper()
    private var app: XCUIApplication {appHelper.app}
    private static let deleteButtonIdentifier = "Delete"
    private static let confirmDeletePhotoButtonIdentifier = "Delete Photo"
    private static let backButtonIdentifier = "BackButton"
    private static let allPhotosIdentifier = "All Photos"
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
        if UIDevice.current.userInterfaceIdiom == .phone {
            XCTAssert(app.buttons[PhotoDetail.allPhotosIdentifier].exists)
            app.buttons[PhotoDetail.allPhotosIdentifier].tap()
        } else {
            XCTAssert(app.buttons[PhotoDetail.backButtonIdentifier].exists)
            app.buttons[PhotoDetail.backButtonIdentifier].tap()
        }
    }
    
    func isDisplayed() {
        XCTAssert(app.buttons[PhotoDetail.editButtonIdentifier].waitForExistence(timeout: appHelper.timeout))
    }
}
