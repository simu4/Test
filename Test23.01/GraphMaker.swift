//
//  GraphMaker.swift
//  Test23.01
//
//  Created by Kirill Netavskiy on 23.01.17.
//  Copyright © 2017 Kirill Netavskiy. All rights reserved.
//

import Foundation
import UIKit
import Macaw

class GraphMaker: UIView{
    var graphDict = [String:Any]()
    var graphDictTemp = [String:Any]()
    var graphLevels = [Int:Int]()
    
    
    func readFromFile() {
        do {
            let url = URL(fileURLWithPath: "/Users/kirillnetavskiy/Xcode/Test23.01/Test23.01/test.json")
            let data = NSData(contentsOf: url)
            if data != nil {
                do {
                    let object = try JSONSerialization.jsonObject(with: data! as Data, options: .allowFragments)
                    if let dictionary = object as? [String: Any] {
                        graphDict = dictionary
                        graphDictTemp = graphDict
                        //print(graphDict)
                    }
                } catch {print(error)}
            }
        }
    }
    
    func countGraphLevels(level: Int){
        
        let tempLevel = level + 1
        if graphLevels[tempLevel] != nil{
            graphLevels[tempLevel]! += tempLevel
        } else {
            graphLevels[tempLevel] = tempLevel
        }
        if let tempArray = graphDictTemp["elements"] as? Array<Any>{
            
            for dict in tempArray {
                
                graphDictTemp = (dict as? Dictionary<String, Any>)!
                countGraphLevels(level: tempLevel)
                
            }
        }
    }
    
    func drawGraph(level: Int, size: Int, point1: CGPoint){
        
        
        self.countGraphLevels(level: 0)
        var size1 = size
        let point = CGPoint.init(x: size1, y: 20 + level)
        let context = UIGraphicsGetCurrentContext()
        context?.setStrokeColor(UIColor.gray.cgColor)
        context?.setLineWidth(1)
        let lines = [CGPoint(x: point1.x + 5, y: point1.y + 13),point]
        context?.addLines(between: lines)
        context?.addEllipse(in: CGRect(origin: CGPoint(x: point1.x - 3, y: point1.y - 2), size: CGSize(width: 20, height: 20)))
        context?.addEllipse(in: CGRect(origin: CGPoint(x: point.x - 3, y: point.y - 2), size: CGSize(width: 20, height: 20)))
        context?.strokePath()
       
        let tempLevel = level + 100
        print(graphDict["value"]!)
        String(describing: graphDict["value"]!).draw(in: CGRect(origin: point, size: CGSize(width: 30, height: 30)))
        
        if let tempArray = graphDict["elements"] as? Array<Any>{
            if !tempArray.isEmpty{
                size1 = size1/tempArray.count
            }
            for dict in tempArray {
                size1 = size1 + size1
                graphDict = (dict as? Dictionary<String, Any>)!
                drawGraph(level: tempLevel,size: size1, point1: point)
                
            }
        }
        
       
        
    }
    
    
}


