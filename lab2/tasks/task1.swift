//
//  task1.swift
//  lab2
//
//  Created by Sarvar Saidazov on 06.02.2024.
//

import Foundation

func task1() {
    var counter: Int = 0
    var accountsInfo:[String:BankAccount] = [:]
    let strId = "BNKID-"
    
MAIN:
    while (true) {
        print("""
                Chose the Action:
                1)Create new bank account
                2)Action over account(by account number)
                0)To eXit
              """)
        let choice = readLine()
        switch (choice) {
        case "1":
            createBankAccount()
            break
        case "2":
            print("Available accounts")
            print(accountsInfo.keys)
            print("Enter account id or 0 to exit")
            if let accountNumber = readLine() {
                if accountNumber == "0" {
                    break
                }
                if let user = searchAccount(accountNumber: accountNumber) {
                    while (true) {
                        print("""
                        Chose the Action:
                        1)Deposit
                        2)Withdraw
                        3)get balance
                        4)display info
                        0)To go back
                      """)
                        if let choice = readLine() {
                            switch choice {
                            case "1":
                                depositToAccount(user: user)
                            case "2":
                                withdrawFromAccount(user: user)
                            case "3":
                                print("Current balance: \(user.getBalance())")
                            case "4":
                                user.displayInfo()
                            case "0":
                                continue MAIN
                            default:
                                print("Invalid action")
                            }
                        }
                    }
                    break
                } else {
                    print("No such account")
                }
            }
        case "0":
            print("goodye")
            break MAIN
        default:
            print("No such choice")
        }
    }
    
    func createBankAccount() {
        print("Account owner name: ")
        let accountOwner = readLine()
        let accountNumber = strId.appending(String(counter))
        print("Enter starting balance")
        if let startingBalance = readLine() ,
            let balance = Double (startingBalance) {
            if balance > 0 {
                accountsInfo[accountNumber] = BankAccount(accountNumber: accountNumber, accountOwner: accountOwner!, balance:balance)
                counter+=1
            } else {
                print("Balance should be more that 0")
            }
        } else {
            print("Wrong format for balance")
        }
    }
    
    func searchAccount(accountNumber: String) -> BankAccount? {
        return accountsInfo[accountNumber]
    }
    
    func depositToAccount(user: BankAccount) {
        print("Enter amount to deposit:")
        if let depositAmountStr = readLine(), let depositAmount = Double(depositAmountStr) {
            user.deposit(amount: depositAmount)
        } else {
            print("Invalid format for amount")
        }
    }
    
    func withdrawFromAccount(user: BankAccount) {
        print("Enter amount to withdraw:")
        if let withdrawAmountStr = readLine(), let withdrawAmount = Double(withdrawAmountStr) {
            user.withdraw(amount: withdrawAmount)
        } else {
            print("Invalid format for amount")
        }
    }
}
