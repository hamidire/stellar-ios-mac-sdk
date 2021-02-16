//
//  AccountHelper.swift
//  stellarsdk
//
//  Created by Mohammad Samadi on 2/16/21.
//  Copyright © 2021 Soneso. All rights reserved.
//

import Foundation
import KeychainSwift


public struct AccountHelper
{
    static let tokenKey = "token"
    static let registryCodeKey = "registryCode"
    static let refreshTokenKey = "refreshTokenKey"
    static let clientPrivateKey = "clientPrivateKey"
    static let clientPublicKey = "clientPublicKey"
    static let serverPublicKey = "serverPublicKey"
    static let kuknostIdKey = "kuknosId"
    static let mobileNumberKey = "mobileNumberKey"
    
    //info of the other account
    //when in test mode, these information are about live and vice versa
//    static let reservedTokenKey = "reservedToken"
//    static let reservedRegistryCodeKey = "reservedRegistryCode"
//    static let reservedClientPrivateKey = "reservedClientPrivateKey"
//    static let reservedClientPublicKey = "reservedClientPublicKey"
//    static let reservedServerPublicKey = "reservedServerPublicKey"
//    static let reservedKuknostIdKey = "reservedKuknosIdKey"
    static let reservedAccountIdKey = "reservedAccountIdKey"
    static let accountIdKey = "accountId"
    static let invitationReferralNewUserKey = "invitationReferralNewUserKey"
    static let invitationReferralInvitationCodeKey = "invitationReferralInvitationCodeKey"
    
    //KYC3Fields
    static let federation_nameKey = "federation_name"
    static let public_keyKey = "public_key"
    static let last_nameKey = "last_name"
    static let first_nameKey = "first_name"
    static let additional_nameKey = "additional_name"
    static let id_genderKey = "id_gender"
    static let father_nameKey = "father_name"
    static let id_numberKey = "id_number"
    static let id_expiration_dateKey = "id_expiration_date"
    static let bc_cert_numberKey = "bc_cert_number"
    static let mobile_numberKey = "mobile_number"
    static let email_addressKey = "email_address"
    static let language_codeKey = "language_code"
    static let id_typeKey = "id_type"
    static let id_country_codeKey = "id_country_code"
    static let KYC3Segment1CompletedKey = "KYC3Segment1CompletedKey"
    
    static let bc_serial_numberKey = "bc_serial_number"
    static let birth_dateKey = "birth_date"
    static let birth_country_codeKey = "birth_country_code"
    static let birth_placeKey = "birth_place"
    static let KYC3Segment2CompletedKey = "KYC3Segment2CompletedKey"
    
    static let addressKey = "address"
    static let address_country_codeKey = "address_country_code"
    static let state_or_provinceKey = "state_or_province"
    static let cityKey = "city"
    static let postal_codeKey = "postal_code"
    static let KYC3Segment3CompletedKey = "KYC3Segment3CompletedKey"
    
    static let bank_account_numberKey = "bank_account_number"
    static let bank_idKey = "bank_id"
    static let bank_card_numberKey = "bank_card_number"
    static let KYC3Segment4CompletedKey = "KYC3Segment4CompletedKey"
    
    static let tax_idKey = "tax_id"
    static let KYC3Segment5CompletedKey = "KYC3Segment5CompletedKey"
    
    static let stock_idKey = "stock_id"
    static let KYC3Segment6CompletedKey = "KYC3Segment6CompletedKey"
    
    static let passport_codeKey = "passport_code"
    static let passport_issue_dateKey = "passport_issue_date"
    static let passport_expiration_dateKey = "id_expiration_datePassport"
    static let passport_country_codeKey = "passport_country_code"
    static let KYC3Segment7CompletedKey = "KYC3Segment7CompletedKey"
    
    static let id_front_photoKey = "id_front_photo"
    static let id_back_photoKey = "id_back_photo"
    static let KYC3Segment8CompletedKey = "KYC3Segment8CompletedKey"
    
    static let cert_photo_page1Key = "cert_photo_page1"
    static let cert_photo_describKey = "cert_photo_describ"
    static let KYC3Segment9CompletedKey = "KYC3Segment9CompletedKey"
    
    static let passport_photoKey = "passport_photo"
    static let KYC3Segment10CompletedKey = "KYC3Segment10CompletedKey"
    
    static let signature_photoKey = "signature_photo"
    static let KYC3Segment11CompletedKey = "KYC3Segment11CompletedKey"
    
    //MARK: set data
    public static func save(token: String)
    {
        
        KeychainSwift().set(token, forKey: tokenKey)
    }
    
//    public static func save(reservedToken: String)
//    {
//
//        KeychainSwift().set(reservedToken, forKey: reservedTokenKey)
//    }
    
    public static func save(registryCode: String)
    {
        KeychainSwift().set(registryCode, forKey: registryCodeKey)
    }
    public static func save(refreshToken: String)
    {
        KeychainSwift().set(refreshToken, forKey: refreshTokenKey)
    }
//    public static func save(reservedRegistryCode: String)
//    {
//        KeychainSwift().set(reservedRegistryCode, forKey: reservedRegistryCodeKey)
//    }
    
    
//    public static func save(kycClientPrivateKey: String)
//    {
//        KeychainSwift().set(kycClientPrivateKey, forKey: clientPrivateKey)
//    }
//    public static func save(reservedKycClientPrivateKey: String)
//    {
//        KeychainSwift().set(reservedKycClientPrivateKey, forKey: reservedClientPrivateKey)
//    }
    
//    public static func save(kycClientPublicKey: String)
//    {
//        KeychainSwift().set(kycClientPublicKey, forKey: clientPublicKey)
//    }
//    public static func save(reservedKycClientPublicKey: String)
//    {
//        KeychainSwift().set(reservedKycClientPublicKey, forKey: reservedClientPublicKey)
//    }
    
//    public static func save(kycServerPublicKey: String)
//    {
//        KeychainSwift().set(kycServerPublicKey, forKey: serverPublicKey)
//    }
//    public static func save(reservedKycServerPublicKey: String)
//    {
//        KeychainSwift().set(reservedKycServerPublicKey, forKey: reservedServerPublicKey)
//    }
    public static func save(invitationReferralNewUser: Bool)
    {
        KeychainSwift().set(invitationReferralNewUser, forKey: invitationReferralNewUserKey)
    }
    public static func save(invitationReferralInvitationCode: String)
    {
        KeychainSwift().set(invitationReferralInvitationCode, forKey: invitationReferralInvitationCodeKey)
    }
    public static func save(mobileNumber: String)
    {
        KeychainSwift().set(mobileNumber, forKey: mobileNumberKey)
    }
    public static func save(federation_name: String)
    {
        KeychainSwift().set(federation_name, forKey: federation_nameKey)
    }
    public static func save(public_key: String)
    {
        KeychainSwift().set(public_key, forKey: public_keyKey)
    }
    public static func save(last_name: String)
    {
        KeychainSwift().set(last_name, forKey: last_nameKey)
    }
    public static func save(first_name: String)
    {
        KeychainSwift().set(first_name, forKey: first_nameKey)
    }
    public static func save(additional_name: String)
    {
        KeychainSwift().set(additional_name, forKey: additional_nameKey)
    }
    public static func save(id_gender: String)
    {
        KeychainSwift().set(id_gender, forKey: id_genderKey)
    }
    public static func save(father_name: String)
    {
        KeychainSwift().set(father_name, forKey: father_nameKey)
    }
    public static func save(id_number: String)
    {
        KeychainSwift().set(id_number, forKey: id_numberKey)
    }
    public static func save(id_expiration_date: String)
    {
        KeychainSwift().set(id_expiration_date, forKey: id_expiration_dateKey)
    }
    public static func save(bc_cert_number: String)
    {
        KeychainSwift().set(bc_cert_number, forKey: bc_cert_numberKey)
    }
    public static func save(mobile_number: String)
    {
        KeychainSwift().set(mobile_number, forKey: mobile_numberKey)
    }
    public static func save(email_address: String)
    {
        KeychainSwift().set(email_address, forKey: email_addressKey)
    }
    public static func save(language_code: String)
    {
        KeychainSwift().set(language_code, forKey: language_codeKey)
    }
    public static func save(id_type: String)
    {
        KeychainSwift().set(id_type, forKey: id_typeKey)
    }
    public static func save(id_country_code: String)
    {
        KeychainSwift().set(id_country_code, forKey: id_country_codeKey)
    }
    public static func save(KYC3Segment1Completed: Bool){
        KeychainSwift().set(KYC3Segment1Completed, forKey: KYC3Segment1CompletedKey)
    }
    
    public static func save(bc_serial_number: String){
        KeychainSwift().set(bc_serial_number, forKey: bc_serial_numberKey)
    }
    public static func save(birth_date: String){
        KeychainSwift().set(birth_date, forKey: birth_dateKey)
    }
    public static func save(birth_country_code: String){
        KeychainSwift().set(birth_country_code, forKey: birth_country_codeKey)
    }
    public static func save(birth_place: String){
        KeychainSwift().set(birth_place, forKey: birth_placeKey)
    }
    public static func save(KYC3Segment2Completed: Bool){
        KeychainSwift().set(KYC3Segment2Completed, forKey: KYC3Segment2CompletedKey)
    }
    
    public static func save(address: String){
        KeychainSwift().set(address, forKey: addressKey)
    }
    public static func save(address_country_code: String){
        KeychainSwift().set(address_country_code, forKey: address_country_codeKey)
    }
    public static func save(state_or_province: String){
        KeychainSwift().set(state_or_province, forKey: state_or_provinceKey)
    }
    public static func save(city: String){
        KeychainSwift().set(city, forKey: cityKey)
    }
    public static func save(postal_code: String){
        KeychainSwift().set(postal_code, forKey: postal_codeKey)
    }
    public static func save(KYC3Segment3Completed: Bool){
        KeychainSwift().set(KYC3Segment3Completed, forKey: KYC3Segment3CompletedKey)
    }
    
    
    public static func save(bank_account_number: String){
        KeychainSwift().set(bank_account_number, forKey: bank_account_numberKey)
    }
    public static func save(bank_id: String){
        KeychainSwift().set(bank_id, forKey: bank_idKey)
    }
    public static func save(bank_card_number: String){
        KeychainSwift().set(bank_card_number, forKey: bank_card_numberKey)
    }
    public static func save(KYC3Segment4Completed: Bool){
        KeychainSwift().set(KYC3Segment4Completed, forKey: KYC3Segment4CompletedKey)
    }
    
    public static func save(tax_id: String){
        KeychainSwift().set(tax_id, forKey: tax_idKey)
    }
    public static func save(KYC3Segment5Completed: Bool){
        KeychainSwift().set(KYC3Segment5Completed, forKey: KYC3Segment5CompletedKey)
    }
    
    public static func save(stock_id: String){
        KeychainSwift().set(stock_id, forKey: stock_idKey)
    }
    public static func save(KYC3Segment6Completed: Bool){
        KeychainSwift().set(KYC3Segment6Completed, forKey: KYC3Segment6CompletedKey)
    }
    
    public static func save(passport_code: String){
        KeychainSwift().set(passport_code, forKey: passport_codeKey)
    }
    public static func save(passport_issue_date: String){
        KeychainSwift().set(passport_issue_date, forKey: passport_issue_dateKey)
    }
    public static func save(passport_expiration_date: String){
        KeychainSwift().set(passport_expiration_date, forKey: passport_expiration_dateKey)
    }
    public static func save(passport_country_code: String){
        KeychainSwift().set(passport_country_code, forKey: passport_country_codeKey)
    }
    public static func save(KYC3Segment7Completed: Bool){
        KeychainSwift().set(KYC3Segment7Completed, forKey: KYC3Segment7CompletedKey)
    }
    
    public static func save(id_front_photo: String){
        UserDefaults.standard.setValue(id_front_photo, forKey: id_front_photoKey)
    }
    public static func save(id_back_photo: String){
        UserDefaults.standard.setValue(id_back_photo, forKey: id_back_photoKey)
    }
    public static func save(KYC3Segment8Completed: Bool){
        KeychainSwift().set(KYC3Segment8Completed, forKey: KYC3Segment8CompletedKey)
    }
    
    public static func save(cert_photo_page1: String){
        UserDefaults.standard.setValue(cert_photo_page1, forKey: cert_photo_page1Key)
    }
    public static func save(cert_photo_describ: String){
        UserDefaults.standard.setValue(cert_photo_describ, forKey: cert_photo_describKey)
    }
    public static func save(KYC3Segment9Completed: Bool){
        KeychainSwift().set(KYC3Segment9Completed, forKey: KYC3Segment9CompletedKey)
    }
    
    public static func save(passport_photo: String){
        UserDefaults.standard.setValue(passport_photo, forKey: passport_photoKey)
    }
    public static func save(KYC3Segment10Completed: Bool){
        KeychainSwift().set(KYC3Segment10Completed, forKey: KYC3Segment10CompletedKey)
    }
    
    public static func save(signature_photo: String){
        UserDefaults.standard.setValue(signature_photo, forKey: signature_photoKey)
    }
    public static func save(KYC3Segment11Completed: Bool){
        KeychainSwift().set(KYC3Segment11Completed, forKey: KYC3Segment11CompletedKey)
    }
    
    //MARK: get data
    public static var token: String?
    {
        return KeychainSwift().get(tokenKey)
//        return (UserDefaults.standard.string(forKey: "setting.network") ?? "Production") == "Production" ? KeychainSwift().get(tokenKey) : KeychainSwift().get(reservedTokenKey)
    }
//    public static var reservedToken: String?
//    {
//        return KeychainSwift().get(reservedTokenKey)
//    }
    public static var refreshToken: String?
    {
        return KeychainSwift().get(refreshTokenKey)
    }
    
    public static var registryCode: String?
    {
        return KeychainSwift().get(registryCodeKey)
//        return (UserDefaults.standard.string(forKey: "setting.network") ?? "Production") == "Production" ? KeychainSwift().get(registryCodeKey) : KeychainSwift().get(reservedRegistryCodeKey)
    }
//    public static var reservedRegistryCode: String?
//    {
//        return KeychainSwift().get(reservedRegistryCodeKey)
//    }
    
//    public static var kycClientPrivateKey : String?
//    {
//        return (UserDefaults.standard.string(forKey: "setting.network") ?? "Production") == "Production" ? KeychainSwift().get(clientPrivateKey) ?? "" : KeychainSwift().get(reservedClientPrivateKey) ?? ""
//    }
//    public static var reservedKycClientPrivateKey : String?
//    {
//        return KeychainSwift().get(reservedClientPrivateKey) ?? ""
//    }
//
//    public static var kycClientPublicKey : String?
//    {
//        return (UserDefaults.standard.string(forKey: "setting.network") ?? "Production") == "Production" ? KeychainSwift().get(clientPublicKey) ?? "" : KeychainSwift().get(reservedClientPublicKey) ?? ""
//    }
//    public static var reservedKycClientPublicKey : String?
//    {
//        return KeychainSwift().get(reservedClientPublicKey) ?? ""
//    }
    
//    public static var kycServerPublicKey : String?
//    {
//        return (UserDefaults.standard.string(forKey: "setting.network") ?? "Production") == "Production" ? KeychainSwift().get(serverPublicKey) ?? "" : KeychainSwift().get(reservedServerPublicKey) ?? ""
//    }
    public static var kuknosId : String?
    {
        return KeychainSwift().get(kuknostIdKey)
    }
//    public static var reservedKycServerPublicKey : String?
//    {
//        return KeychainSwift().get(reservedServerPublicKey) ?? ""
//    }
    public static var invitationReferralNewUser : Bool?
    {
        return KeychainSwift().getBool(invitationReferralNewUserKey) ?? false
    }
    public static var invitationReferralInvitationCode : String?
    {
        return KeychainSwift().get(invitationReferralInvitationCodeKey) ?? ""
    }
    
    public static var mobileNumber : String?
    {
        return KeychainSwift().get(mobileNumberKey)
    }
    
    public static var federation_name : String?
    {
        return KeychainSwift().get(federation_nameKey)
    }
    public static var public_key : String?
    {
        return KeychainSwift().get(public_keyKey)
    }
    public static var accountId: String? {
        return (UserDefaults.standard.string(forKey: "setting.network") ?? "Production") == "Production" ? KeychainSwift().get(accountIdKey) : KeychainSwift().get(reservedAccountIdKey)
    }
    public static var last_name : String?
    {
        return KeychainSwift().get(last_nameKey)
    }
    public static var first_name : String?
    {
        return KeychainSwift().get(first_nameKey)
    }
    public static var additional_name : String?
    {
        return KeychainSwift().get(additional_nameKey)
    }
    public static var id_gender : String?
    {
        return KeychainSwift().get(id_genderKey)
    }
    public static var father_name : String?
    {
        return KeychainSwift().get(father_nameKey)
    }
    public static var id_number : String?
    {
        return KeychainSwift().get(id_numberKey)
    }
    public static var id_expiration_date : String?
    {
        return KeychainSwift().get(id_expiration_dateKey)
    }
    public static var bc_cert_number : String?
    {
        return KeychainSwift().get(bc_cert_numberKey)
    }
    public static var mobile_number : String?
    {
        return KeychainSwift().get(mobile_numberKey)
    }
    public static var email_address : String?
    {
        return KeychainSwift().get(email_addressKey)
    }
    public static var language_code : String?
    {
        return KeychainSwift().get(language_codeKey)
    }
    public static var id_type : String?
    {
        return KeychainSwift().get(id_typeKey)
    }
    public static var id_country_code : String?
    {
        return KeychainSwift().get(id_country_codeKey)
    }
    
    public static var  KYC3Segment1Completed : Bool?
    {
        return KeychainSwift().getBool(KYC3Segment1CompletedKey)
    }
    
    public static var  bc_serial_number : String?
    {
        return KeychainSwift().get(bc_serial_numberKey)
    }
    public static var  birth_date : String?
    {
        return KeychainSwift().get(birth_dateKey)
    }
    public static var  birth_country_code : String?
    {
        return KeychainSwift().get(birth_country_codeKey)
    }
    public static var  birth_place : String?
    {
        return KeychainSwift().get(birth_placeKey)
    }
    public static var  KYC3Segment2Completed : Bool?
    {
        return KeychainSwift().getBool(KYC3Segment2CompletedKey)
    }
    
    public static var  address : String?
    {
        return KeychainSwift().get(addressKey)
    }
    public static var  address_country_code : String?
    {
        return KeychainSwift().get(address_country_codeKey)
    }
    public static var  state_or_province : String?
    {
        return KeychainSwift().get(state_or_provinceKey)
    }
    public static var  city : String?
    {
        return KeychainSwift().get(cityKey)
    }
    public static var  postal_code : String?
    {
        return KeychainSwift().get(postal_codeKey)
    }
    public static var  KYC3Segment3Completed : Bool?
    {
        return KeychainSwift().getBool(KYC3Segment3CompletedKey)
    }
    
    
    public static var  bank_account_number : String?
    {
        return KeychainSwift().get(bank_account_numberKey)
    }
    public static var  bank_id : String?
    {
        return KeychainSwift().get(bank_idKey)
    }
    public static var  bank_card_number : String?
    {
        return KeychainSwift().get(bank_card_numberKey)
    }
    public static var  KYC3Segment4Completed : Bool?
    {
        return KeychainSwift().getBool(KYC3Segment4CompletedKey)
    }
    
    public static var  tax_id : String?
    {
        return KeychainSwift().get(tax_idKey)
    }
    public static var  KYC3Segment5Completed : Bool?
    {
        return KeychainSwift().getBool(KYC3Segment5CompletedKey)
    }
    
    public static var  stock_id : String?
    {
        return KeychainSwift().get(stock_idKey)
    }
    public static var  KYC3Segment6Completed : Bool?
    {
        return KeychainSwift().getBool(KYC3Segment6CompletedKey)
    }
    
    public static var  passport_code : String?
    {
        return KeychainSwift().get(passport_codeKey)
    }
    public static var  passport_issue_date : String?
    {
        return KeychainSwift().get(passport_issue_dateKey)
    }
    public static var  passport_expiration_date : String?
    {
        return KeychainSwift().get(passport_expiration_dateKey)
    }
    public static var  passport_country_code : String?
    {
        return KeychainSwift().get(passport_country_codeKey)
    }
    public static var  KYC3Segment7Completed : Bool?
    {
        return KeychainSwift().getBool(KYC3Segment7CompletedKey)
    }
    
    
    public static var  id_front_photo : String?
    {
        return UserDefaults.standard.string(forKey: id_front_photoKey)
    }
    public static var  id_back_photo : String?
    {
        return UserDefaults.standard.string(forKey: id_back_photoKey)
    }
    public static var  KYC3Segment8Completed : Bool?
    {
        return KeychainSwift().getBool(KYC3Segment8CompletedKey)
    }
    
    public static var  cert_photo_page1 : String?
    {
        return UserDefaults.standard.string(forKey: cert_photo_page1Key)
    }
    public static var  cert_photo_describ : String?
    {
        return UserDefaults.standard.string(forKey: cert_photo_describKey)
    }
    public static var  KYC3Segment9Completed : Bool?
    {
        return KeychainSwift().getBool(KYC3Segment9CompletedKey)
    }
    
    public static var  passport_photo : String?
    {
        return UserDefaults.standard.string(forKey: passport_photoKey)
    }
    public static var  KYC3Segment10Completed : Bool?
    {
        return KeychainSwift().getBool(KYC3Segment10CompletedKey)
    }
    
    public static var  signature_photo : String?
    {
        return UserDefaults.standard.string(forKey: signature_photoKey)
    }
    public static var  KYC3Segment11Completed : Bool?
    {
        return KeychainSwift().getBool(KYC3Segment11CompletedKey)
    }
    
    public static func clear()
    {
        
        KeychainSwift().delete(clientPublicKey)
        KeychainSwift().delete(serverPublicKey)
        KeychainSwift().delete(clientPrivateKey)
        KeychainSwift().delete(registryCodeKey)
        KeychainSwift().delete(refreshTokenKey)
        KeychainSwift().delete(tokenKey)
        KeychainSwift().delete(kuknostIdKey)
        KeychainSwift().delete(mobileNumberKey)
        
//        KeychainSwift().delete(reservedClientPublicKey)
//        KeychainSwift().delete(reservedServerPublicKey)
//        KeychainSwift().delete(reservedClientPrivateKey)
//        KeychainSwift().delete(reservedRegistryCodeKey)
//        KeychainSwift().delete(reservedTokenKey)
//        KeychainSwift().delete(reservedKuknostIdKey)
        KeychainSwift().delete(federation_nameKey)
        KeychainSwift().delete(public_keyKey)
        KeychainSwift().delete(last_nameKey)
        KeychainSwift().delete(first_nameKey)
        KeychainSwift().delete(additional_nameKey)
        KeychainSwift().delete(id_genderKey)
        KeychainSwift().delete(father_nameKey)
        KeychainSwift().delete(id_numberKey)
        KeychainSwift().delete(id_expiration_dateKey)
        KeychainSwift().delete(bc_cert_numberKey)
        KeychainSwift().delete(mobile_numberKey)
        KeychainSwift().delete(email_addressKey)
        KeychainSwift().delete(language_codeKey)
        KeychainSwift().delete(id_typeKey)
        KeychainSwift().delete(id_country_codeKey)
        KeychainSwift().delete(KYC3Segment1CompletedKey)
        
        KeychainSwift().delete(bc_serial_numberKey)
        KeychainSwift().delete(birth_dateKey)
        KeychainSwift().delete(birth_country_codeKey)
        KeychainSwift().delete(birth_placeKey)
        KeychainSwift().delete(KYC3Segment2CompletedKey)
        
        KeychainSwift().delete(addressKey)
        KeychainSwift().delete(address_country_codeKey)
        KeychainSwift().delete(state_or_provinceKey)
        KeychainSwift().delete(cityKey)
        KeychainSwift().delete(postal_codeKey)
        KeychainSwift().delete(KYC3Segment3CompletedKey)
        
        KeychainSwift().delete(bank_account_numberKey)
        KeychainSwift().delete(bank_idKey)
        KeychainSwift().delete(bank_card_numberKey)
        KeychainSwift().delete(KYC3Segment4CompletedKey)
        
        KeychainSwift().delete(tax_idKey)
        KeychainSwift().delete(KYC3Segment5CompletedKey)
        
        KeychainSwift().delete(stock_idKey)
        KeychainSwift().delete(KYC3Segment6CompletedKey)
        
        KeychainSwift().delete(passport_codeKey)
        KeychainSwift().delete(passport_issue_dateKey)
        KeychainSwift().delete(passport_expiration_dateKey)
        KeychainSwift().delete(passport_country_codeKey)
        KeychainSwift().delete(KYC3Segment7CompletedKey)
        
        KeychainSwift().delete(KYC3Segment8CompletedKey)
        
        KeychainSwift().delete(KYC3Segment9CompletedKey)
        
        KeychainSwift().delete(KYC3Segment10CompletedKey)
        
        KeychainSwift().delete(KYC3Segment11CompletedKey)
    }
}
