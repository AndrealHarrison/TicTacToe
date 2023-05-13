//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by Andrea Harrison on 5/12/23.
//

import XCTest
@testable import TicTacToe


func test_initialValue_NineCells() {
    // Arrange
    let ticModel = TicModel()
    
    // Act
    
    // Assert
    XCTAssertEqual(ticModel.grid.count, 9)
}




