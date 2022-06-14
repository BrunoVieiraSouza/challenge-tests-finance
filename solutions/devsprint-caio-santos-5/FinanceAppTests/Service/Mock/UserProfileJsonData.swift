//
//  UserProfileJsonData.swift
//  FinanceAppTests
//
//  Created by Bruno Vieira Souza on 14/06/22.
//

import Foundation

let userProfileJsonData = """
{
    "name": "Ronald Robertson",
    "phone": "11-99999-8888",
    "email": "ronald@gmail.com",
    "address": "Alameda Amazona 888 - Barueri-SP",
    "account":
        {
            "agency": "0089",
            "account": "898989-9"
        }
}
""".data(using: .utf8)
