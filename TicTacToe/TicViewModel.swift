//
//  TicViewModel.swift
//  TicTacToe
//
//  Created by Andrea Harrison on 5/12/23.
//

import Foundation

class TicViewModel: ObservableObject {
    @Published private var ticModel: TicModel

    init() {
        ticModel = TicModel()
    }
    
    var grid: [cell] {
        get { ticModel.grid }
    }

}

