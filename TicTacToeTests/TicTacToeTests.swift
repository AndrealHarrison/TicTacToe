//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by Andrea Harrison on 5/12/23.
//

import XCTest
@testable import TicTacToe


class TicTacToeTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    func testInitValue_nineCells() {
        let ticModel = TicViewModel()

        XCTAssertEqual(ticModel.grid.count, 9)
    }
    func test_initialValue_IsBlank() {
            // Arrange
            let ticModel = TicViewModel()
            
            // Act
            
            // Assert
            XCTAssertEqual((ticModel.grid.filter { $0 == cell.b }.count), 9)
        }



    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}

class TicViewModelTests: XCTestCase {

    func test_initialValue_NineCells() {
        // Arrange
        let ticViewModel = TicViewModel()
        // Act
        
        // Assert
        XCTAssertEqual(ticViewModel.grid.count, 9)
    }

    func test_initialValue_IsBlank() {
        // Arrange
        let ticViewModel = TicViewModel()
        
        // Act
        
        // Assert
        XCTAssertEqual((ticViewModel.grid.filter { $0 == cell.b }.count), 9)
    }
    
    func test_setCell3_IsX() {
        // Arrange
        var ticModel = TicModel()
        
        // Act
        ticModel.setCell(n: 3, c: .x)
        
        // Assert
        XCTAssertTrue(ticModel.grid[3] == cell.x)
    }
    
    func test_setCell42_IsIgnored() {
        // Arrange
        var ticModel = TicModel()
        
        // Act
        ticModel.setCell(n: 42, c: .x)
        
        // Assert
        XCTAssertTrue(ticModel.grid.contains { $0 == cell.b } )
    }
    
    func test_setCellTwice_ignoreSecond() {
        // Arrange
        var ticModel = TicModel()

        // Act
        ticModel.setCell(n: 3, c: .x)
        ticModel.setCell(n: 3, c: .o)

        // Assert
        XCTAssertTrue(ticModel.grid[3] == Cell.x)
        XCTAssertEqual((ticModel.grid.filter { $0 == Cell.x }.count), 1)
        XCTAssertEqual((ticModel.grid.filter { $0 == Cell.b }.count), 8)
    }

    func test_setCellBlank_ignored() {
        // Arrange
        var ticModel = TicModel()

        // Act
        ticModel.setCell(n: 3, c: .x)
        ticModel.setCell(n: 3, c: .b)

        // Assert
        XCTAssertTrue(ticModel.grid[3] == Cell.x)
        XCTAssertEqual((ticModel.grid.filter { $0 == Cell.x }.count), 1)
        XCTAssertEqual((ticModel.grid.filter { $0 == Cell.b }.count), 8)
    }



}



