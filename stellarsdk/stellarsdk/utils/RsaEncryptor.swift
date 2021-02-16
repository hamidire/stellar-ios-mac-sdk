//
//  RsaEncryptor.swift
//  stellarsdk
//
//  Created by Mohammad Samadi on 2/16/21.
//  Copyright © 2021 Soneso. All rights reserved.
//

import Foundation
import class SwiftyRSA.PublicKey
import class SwiftyRSA.ClearMessage
import struct SwiftyRSA.Padding
import class SwiftyRSA.Signature
import class SwiftyRSA.PrivateKey


struct RsaEncryptor
{
    static func encrypt(text : String,pemString : String,padding : SecPadding = .OAEP)  -> Data?
    {
        do
        {
            let pubicKey = try SwiftyRSA.PublicKey(pemEncoded  : pemString)
            let clear = try ClearMessage(string: text, using: .utf8)
            let encrypted = try clear.encrypted(with: pubicKey, padding: .OAEP)
            return encrypted.data
        }
        catch let error
        {
            print("Encrpted error occurred! ::\(error.localizedDescription)")
            return nil
        }
    }
    
    static func sign(text : String,privateKey : String, digestType:Signature.DigestType = .sha1) -> Data?
    {
        do
        {
            let userPrivateKey = try? SwiftyRSA.PrivateKey(pemEncoded  : privateKey)
            let sign = try? ClearMessage(string: text, using: .utf8)
            let signed = try sign?.signed(with: userPrivateKey!, digestType: digestType)
            return signed?.data
            
        }
        catch let error
        {
            print("sign error occurred! ::\(error.localizedDescription)")
            return nil
        }
    }
//    static func encryptBody(body : [String : Any]) -> Data?
//    {
//        if let theJSONData = try? JSONSerialization.data(
//            withJSONObject: body,
//            options: []) {
//            if let msg = String(data: theJSONData,
//                                encoding: .ascii){
//                guard let serverPubKey = AccountHelper.kycServerPublicKey,let userPrivateKey = AccountHelper.kycClientPrivateKey,let bodyEncryptedBase64 = RsaEncryptor.encrypt(text: msg, pemString: serverPubKey)?.base64EncodedString(),let signed = RsaEncryptor.sign(text: bodyEncryptedBase64, privateKey: userPrivateKey)?.base64EncodedString() else { return nil}
//                return ["message" : bodyEncryptedBase64,"signature" : signed].jsonData
//            }
//        }
//        return nil
//    }
}
extension String {
    
    func fromBase64() -> String? {
        guard let data = Data(base64Encoded: self) else {
            return nil
        }
        
        return String(data: data, encoding: .utf8)
    }
    
    func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }
}
