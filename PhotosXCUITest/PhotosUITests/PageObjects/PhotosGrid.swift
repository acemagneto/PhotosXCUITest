//
//  Photos.swift
//  PhotosUITests
//
//  Created by Andrew Crawford on 05/09/2022.
//

import XCTest

class PhotosGrid {
    private let appHelper = AppHelper()
    private var app: XCUIApplication {appHelper.app}
    private static let photosGridView = "PhotosGridView"
    private var selectedPhoto = ""
    
    func isDisplayed() {
        XCTAssert(app.collectionViews[PhotosGrid.photosGridView].waitForExistence(timeout: appHelper.timeout))
    }
    
    func selectFirstPhotoInGrid() {
        let firstPhotoInGrid = getPhotoLabelFromGrid()
        tapFirstPhoto()
        selectedPhoto = getPhotoName()
        XCTAssertEqual(selectedPhoto, firstPhotoInGrid)
    }
    
    func tapFirstPhoto(){
        app.collectionViews[PhotosGrid.photosGridView].cells.firstMatch.tap()
    }
    
    func assertPhotoDeletedFromUI() {
        let firstPhotoInGrid = getPhotoLabelFromGrid()
        XCTAssertNotEqual(firstPhotoInGrid, selectedPhoto)
    }
    
    func getPhotoLabelFromGrid() -> String {
        let label = app.collectionViews[PhotosGrid.photosGridView].cells.firstMatch.label
        return label
    }
    
    func getPhotoName() -> String {
        let label = app.images.firstMatch.label
        return label
    }
}
