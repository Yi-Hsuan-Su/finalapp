//
//  Memory.swift
//  finalapp
//
//  Created by EA on 2019/6/10.
//  Copyright © 2019 EA. All rights reserved.
//

import Foundation

struct Memory:Codable {
    var title: String
    var detail:String
    
    
    
    
    static let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
    static func saveToFile(memorys: [Memory]) {
        let propertyEncoder = PropertyListEncoder()
        if let data = try? propertyEncoder.encode(memorys) {
            let url = Memory.documentsDirectory.appendingPathComponent("memory").appendingPathExtension("plist")
            try? data.write(to: url)
        }
    }
    
    static func readLoversFromFile() -> [Memory]? {
        let propertyDecoder = PropertyListDecoder()
        let url = Memory.documentsDirectory.appendingPathComponent("memory").appendingPathExtension("plist")
        if let data = try? Data(contentsOf: url), let memorys = try? propertyDecoder.decode([Memory].self, from: data) {
            return memorys
        } else {
            return nil
        }
    }
}
