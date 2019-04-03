from abc import ABCMeta, abstractmethod
from random import randint

class Account(metaclass = ABCMeta):

    @abstractmethod
    def create_account():
        return 0

    @abstractmethod
    def authenticate():
        return 0

    @abstractmethod
    def withdraw():
        return 0

    @abstractmethod
    def deposit():
        return 0

    @abstractmethod
    def display_balance():
        return 0


class SavingsAccount(Account):

    def __init__(self):
        self.saving_accounts = {}


    def create_account(self, name, initial_deposit):
        self.account_number = randint(10000, 99999)
        self.saving_accounts[self.account_number] = [name, initial_deposit]
        print("Account creation has been succesul. Your account number is: ", self.account_number)

    def authenticate(self, name, account_number):
        if account_number in self.saving_accounts.keys():
            if self.saving_accounts[account_number][0] == name:
                print("Authentication Successful")
                self.account_number = account_number
                return True
            else:
                print("Authentication Failed")
                return False
        else:
            print("Authentication Failed")
            return False

    def withdraw(self, withdraw_amount):
        if withdraw_amount > self.saving_accounts[self.account_number][1]:
            print("Insufficient balance")
        else:
            self.saving_accounts[self.account_number][1] -= withdraw_amount
            print("Withdrawal was successful.")
            self.display_balance()

    def deposit(self, deposit_amount):
        self.saving_accounts[self.account_number][1] += deposit_amount
        print("Deposit was succesul.")
        self.display_balance()

    def display_balance(self):
        print("Available balance: ", self.saving_accounts[self.account_number][1])


saving_account = SavingsAccount()
while True:
    print("Enter 1 to create a new account")
    print("Enter 2 to access an existing account")
    print("Enter 3 to exit")
    user_choice = int(input())

    if user_choice is 1:
        print("Enter your name: ")
        name = input()
        print("Enter the initial deposit: ")
        deposit = int(input())
        saving_account.create_account(name, deposit)
    if user_choice is 2:
        print("Enter your name: ")
        name = input()
        print("Enter your account number: ")
        account_number = int(input())
        authentication_status = saving_account.authenticate(name, account_number)
        if authentication_status:
            while True:
                print("Enter 1 to withdraw")
                print("Enter 2 to deposit")
                print("Enter 3 to display avialable balance")
                print("Enter 4 to go back to the previus menu")

                user_choice = int(input())
                if user_choice is 1:
                    print("Enter a withdrawal amount")
                    withdrawal_amount = int(input())
                    saving_account.withdraw(withdrawal_amount)
                elif user_choice is 2:
                    print("Enter an amount to be deposited")
                    deposit_amount = int(input())
                    saving_account.deposit(deposit_amount)
                elif user_choice is 3:
                    saving_account.display_balance()
                elif user_choice is 4:
                    break
    elif user_choice is 3:
        quit()

