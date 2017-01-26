//
//  DrawGraph.swift
//  Test23.01
//
//  Created by Kirill Netavskiy on 26.01.17.
//  Copyright © 2017 Kirill Netavskiy. All rights reserved.
//

import UIKit

class DrawGraph: UIView {
    let graph = GraphMaker()
  
    
    override func draw(_ rect: CGRect) {
        graph.readFromFile()
        
        
        graph.drawGraph(level: 0, size: 50, point1: CGPoint.init(x: 50, y: 20))
        
     
    }


}
