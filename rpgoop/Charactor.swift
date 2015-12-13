//
//  Charactor.swift
//  rpgoop
//
//  Created by 邱国邦 on 15/12/14.
//  Copyright © 2015年 FaceCat. All rights reserved.
//

import Foundation

class Charactor {
    
    //MARK: Properties
    private var _hp = 100
    private var _attackPower = 50
    
    var attackPower: Int {
        return _attackPower
    }
    
    var hp: Int {
        return _hp
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    //MARK: Methods
    func attempToAttack(attackValue: Int) ->Bool {
        self._hp -= attackValue
        
        return true
    }
    
    //MARK: Initiallization
    init(startingHp: Int, attackPower: Int) {
        self._hp = startingHp
        self._attackPower = attackPower
    }
}