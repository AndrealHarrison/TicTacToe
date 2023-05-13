//
//  Model.swift
//  TicTacToe
//
//  Created by Andrea Harrison on 5/12/23.
//

import Foundation

enum cell: String {
    case x = "X"
    case o = "O"
    case b = "" // blank
}

struct TicModel {
    private var _grid: [cell]
    
    init() {
        _grid = []
        for _ in 0..<9 {
            _grid.append(cell.b)
        }
    }
    
    var grid: [cell] {
        get { _grid }
    }
    
    mutating func setCell(n:Int, c: cell) {
        guard _grid.indices.contains(n) else {
            return
        }
        _grid[n] = c
    }


}
