//
//  Photos.swift
//  PhotosUITests
//
//  Created by Andrew Crawford on 05/09/2022.
//

import XCTest

private let appHelper = AppHelper()
private var app: XCUIApplication {appHelper.app}

class Photos {
    
    func selectFirstPhoto() {
        app.collectionViews["PhotosGridView"].cells.firstMatch.tap()
    }
    
    func deletePhoto() {
        app.buttons["Delete"].tap()
    }
    
    func confirmDeletion() {
        XCTAssert(app.cells["Delete Photo"].exists)
        app.cells["Delete Photo"].tap()
    }
    
    func assertPhotoDeletedFromUI() {
        
    }
    
    func isDisplayed() {
        XCTAssert(app.collectionViews["PhotosGridView"].waitForExistence(timeout: appHelper.timeout))
    }
}
