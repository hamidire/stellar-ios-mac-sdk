//
//  Ditionary+ExtensionJson.swift
//  stellarsdk
//
//  Created by Mohammad Samadi on 2/16/21.
//  Copyright © 2021 Soneso. All rights reserved.
//

import Foundation

extension Dictionary
{
    
    var json: String
    {
        let invalidJson = "Not a valid JSON"
        do
        {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
            return String(bytes: jsonData, encoding: String.Encoding.utf8) ?? invalidJson
        }
        catch
        {
            return invalidJson
        }
    }
    var jsonData : Data?{
        do
        {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [])
            return jsonData
        }
        catch
        {
            return nil
        }
    }
    
    func printJson() {
        print(json)
    }
    
    
    
}

