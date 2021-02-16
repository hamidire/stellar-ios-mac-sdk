//
//  ResolveAddressResponse.swift
//  stellarsdk
//
//  Created by Razvan Chelemen on 22/08/2018.
//  Copyright © 2018 Soneso. All rights reserved.
//

import Foundation

public struct ResolveAddressResponse: Decodable {

    /// stellar address in the format <username*domain.tld>
    public var stellarAddress:String?
    
    /// the public key of the account
    public var accountId:String?
    
    /// (optional) - Memo type that needs to be attached to a transaction
    public var memoType:String?
    
    /// (optional) - Memo value that needs to be attached to a transaction
    public var memo:String?
    
    public var kuknosAddress:String?
        
    public var firstName:String?
    
    public var lastName:String?
    
    public var kycLevel:String?
    
    public var type: String?
    
    public var email: String?
    
    public var mobile: String?
    
    public var nationalID: String?
    
    public var id: String?
    
    public var kuknosID: String?
    
    public var birthdate: String?
    
    public var iban: String?
    
    /// Properties to encode and decode
    private enum CodingKeys: String, CodingKey {
        case stellarAddress = "stellar_address"
        case accountId = "account_id"
        case memoType = "memo_type"
        case memo = "memo"
        case kuknosAddress = "kuknos_address"
        case firstName = "FirstName"
        case lastName = "LastName"
        case kycLevel = "KYCLevel"
        case type = "type"
        case email = "Email"
        case mobile = "Mobile"
        case nationalID = "NationalID"
        case id = "id"
        case kuknosID = "kuknos_id"
        case birthdate = "birthdate"
        case iban = "iban"
    }
    
    /**
     Initializer - creates a new instance by decoding from the given decoder.
     
     - Parameter decoder: The decoder containing the data
     */
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        stellarAddress = try values.decodeIfPresent(String.self, forKey: .stellarAddress)
        accountId = try values.decodeIfPresent(String.self, forKey: .accountId)
        memoType = try values.decodeIfPresent(String.self, forKey: .memoType)
        memo = try values.decodeIfPresent(String.self, forKey: .memo)
        kuknosAddress = try values.decodeIfPresent(String.self, forKey: .kuknosAddress)
        firstName = try values.decodeIfPresent(String.self, forKey: .firstName)
        lastName = try values.decodeIfPresent(String.self, forKey: .lastName)
        kycLevel = try values.decodeIfPresent(String.self, forKey: .kycLevel)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        email = try values.decodeIfPresent(String.self, forKey: .email)
        mobile = try values.decodeIfPresent(String.self, forKey: .mobile)
        nationalID = try values.decodeIfPresent(String.self, forKey: .nationalID)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        kuknosID = try values.decodeIfPresent(String.self, forKey: .kuknosID)
        birthdate = try values.decodeIfPresent(String.self, forKey: .birthdate)
        iban = try values.decodeIfPresent(String.self, forKey: .iban)
        if birthdate != nil && birthdate != ""{
            UserDefaults.standard.set(true, forKey: "BIRTHDATE_IS_GIVEN")
        }
        if accountId == nil || accountId! == ""{
            self.accountId = self.id
        }
        if kuknosAddress == nil || kuknosAddress == ""{
            self.kuknosAddress = self.kuknosID
        }
        if kuknosID == nil || kuknosID == ""{
            self.kuknosID = self.kuknosAddress
        }

    }
}
