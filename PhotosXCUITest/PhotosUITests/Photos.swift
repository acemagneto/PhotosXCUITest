//
//  Photos.swift
//  PhotosUITests
//
//  Created by Andrew Crawford on 05/09/2022.
//

import XCTest

class Photos {
    
    private let appHelper = AppHelper()
    private var app: XCUIApplication {appHelper.app}
    private static let photosGridView = "PhotosGridView"
    private static let deleteButtonIdentifier = "Delete"
    private static let confirmDeletePhotoButtonIdentifier = "Delete Photo"
    private static let backButtonIdentifier = "All Photos"
    private var selectedPhoto = ""
    
    func isDisplayed() {
        XCTAssert(app.collectionViews[Photos.photosGridView].waitForExistence(timeout: appHelper.timeout))
    }
    
    func selectFirstPhotoInGrid() {
        let firstPhotoInGrid = getPhotoLabelFromGrid()
        tapFirstPhoto()
        selectedPhoto = getPhotoName()
        XCTAssertEqual(selectedPhoto, firstPhotoInGrid)
    }
    
    func tapFirstPhoto(){
        app.collectionViews[Photos.photosGridView].cells.firstMatch.tap()
    }
    
    func deletePhoto() {
        XCTAssert(app.buttons[Photos.deleteButtonIdentifier].waitForExistence(timeout: appHelper.timeout))
        app.buttons[Photos.deleteButtonIdentifier].tap()
    }
    
    func confirmDeletion() {
        XCTAssert(app.buttons[Photos.confirmDeletePhotoButtonIdentifier].exists)
        app.buttons[Photos.confirmDeletePhotoButtonIdentifier].tap()
    }
    
    func assertPhotoDeletedFromUI() {
        let firstPhotoInGrid = getPhotoLabelFromGrid()
        XCTAssertNotEqual(firstPhotoInGrid, selectedPhoto)
    }
    
    func navigateBackToAllPhotos() {
        app.buttons[Photos.backButtonIdentifier].tap()
    }
    
    func getPhotoLabelFromGrid() -> String {
        let label = app.collectionViews[Photos.photosGridView].cells.firstMatch.label
        return label
    }
    
    func getPhotoName() -> String {
        let label = app.images.firstMatch.label
        return label
    }
}
