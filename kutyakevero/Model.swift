//
//  Model.swift
//  kutyakevero
//
//  Created by Adam Horvath on 2017. 12. 19..
//  Copyright © 2017. Adam Horvath. All rights reserved.
//

import UIKit

class Model {
    let backgrounds = [
        BackgroundItem(image: UIImage(named: "background1")!, dogTranslate: CGPoint(x: 0, y: 0), dogScale: 1, dogRotation: 0),
        BackgroundItem(image: UIImage(named: "background4")!, dogTranslate: CGPoint(x: 0, y: 0), dogScale: 1, dogRotation: 0),
        BackgroundItem(image: UIImage(named: "background5")!, dogTranslate: CGPoint(x: 0, y: 0), dogScale: 1, dogRotation: 0),
        BackgroundItem(image: UIImage(named: "background6")!, dogTranslate: CGPoint(x: 0, y: 0), dogScale: 1, dogRotation: 0),
        BackgroundItem(image: UIImage(named: "background7")!, dogTranslate: CGPoint(x: 0, y: 0), dogScale: 1, dogRotation: 0),
        BackgroundItem(image: UIImage(named: "background8")!, dogTranslate: CGPoint(x: 0, y: 0), dogScale: 1, dogRotation: 0),
        BackgroundItem(image: UIImage(named: "background9")!, dogTranslate: CGPoint(x: 0, y: 0), dogScale: 1, dogRotation: 0)
    ]
    
    lazy var selectedBackground: BackgroundItem = {
        return backgrounds[0]
    }()
    
    var dog:[BodyPiece : Int]?
    
    static func getRandomDog() -> [BodyPiece : Int] {
        var retVal = [BodyPiece : Int]()
        retVal[.ear] = BodyPiece.ear.getImages().randomIndex()!
        retVal[.mouth] = BodyPiece.mouth.getImages().randomIndex()!
        retVal[.eye] = BodyPiece.eye.getImages().randomIndex()!
        retVal[.head] = BodyPiece.head.getImages().randomIndex()!
        retVal[.body] = BodyPiece.head.getImages().randomIndex()!
        
        return retVal
    }
}
