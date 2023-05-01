//
//  AuthenticationHandler.swift
//  Auth0SDK
//
//  Created by usl-sz- on 28/04/23.
// com.app.Auth0SDK://dev-fx44br527h40abis.us.auth0.com/ios/com.app.Auth0SDK/callback

import Foundation
import Auth0
import AuthenticationServices

public class AuthenticationHandler {
    public init () {
        
    }
    public func login() {
        Auth0
            .webAuth()
            .start { result in
                switch result {
                case .success(let credentials):
                    print("Obtained credentials: \(credentials)")
                case .failure(let error):
                    print("Failed with: \(error)")
                }
            }
    }
    public func logout() {
        Auth0
            .webAuth()
            .clearSession { result in
                switch result {
                case .success:
                    print("Logged out")
                case .failure(let error):
                    print("Failed with: \(error)")
                }
            }
    }
}
