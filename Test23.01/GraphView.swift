//
//  GraphView.swift
//  Test23.01
//
//  Created by Kirill Netavskiy on 26.01.17.
//  Copyright © 2017 Kirill Netavskiy. All rights reserved.
//

import UIKit
import Macaw

class GraphView: MacawView {
    let graph = GraphMaker()
    
//    private static let elementSize = Size(w: 120, h: 160)
//    private static let elementSpace = Size(w: 20, h: 20)
//    private static let gaps = Size(w: 275, h: 240)
//    
//    private static let screen = UIScreen.main.bounds
//    private static let content = Size(w: 18 * elementSize.w + 17 * elementSpace.w, h: 10 * elementSize.h + 9 * elementSpace.h)
//    private static let scale = 1.0 / 3.0
//    
//    private let elements: [Node]
//    
//    private var showTable = true
//    
//    private var animations: [Animation] = []
//   
//
//    required init?(coder aDecoder: NSCoder) {
//        graph.readFromFile()
//        
//        self.elements = fillElements()
//        super.init(node: Group(contents: elements), coder: aDecoder)
//        self.backgroundColor = UIColor.black
//        
//    }
//    
//    private  func fillElements() -> [Node] {
//        var elements: [Node] = []
//        for i in graph.graphDict.enumerated() {
//            drand48()
//            let group = Group(contents: [
//                Shape(form: Locus)
//            elements.append(group)
//        }
//        let data = GraphView.gridData()
//        for (i, node) in elements.enumerated() {
//            node.place = data[i]
//        }
//        return elements
//    }
//    private static
}
