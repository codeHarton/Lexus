//
//  CellProtocol.swift
//  Lexus
//
//  Created by harton on 2021/1/8.
//

import Foundation

protocol CellProtocol {
    associatedtype T
    
    var model : T?{get set}
    
    func update(model : T?)
}

