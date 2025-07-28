
import 'dart:io';

class bankaccount {
  String accountholder;
  double balance;

  bankaccount({required this.accountholder, required this.balance});

  void deposit(double amount) {
    balance=balance+ amount;
    print("Deposit successful. New balance: $balance");
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print("Insufficient balance.");
    } else {
      balance =balance- amount;
      print("Withdrawal successful. New balance: $balance");
    }
  }

  void viewdetails() {
    print("\n--- Account Details ---");
    print("Name: $accountholder");
    print("Balance: $balance");
  }
}

void main() {
  bankaccount? account;

  print("Welcome to the Banking Management System!");
  for(;;){
    print("\nChoose an option:");
    print("1. Create Account");
    print("2. Deposit Money");
    print("3. Withdraw Money");
    print("4. View Account Details");
  stdout.write("Enter your choice (1 to 4): ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        if (account != null) {
          print("Account already exists.");
          break;
        }
        stdout.write("Enter account holder name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter initial deposit amount: ");
        double initialAmount = double.parse(stdin.readLineSync()!);
        account = bankaccount(accountholder: name, balance: initialAmount);
        print("Account created successfully!");
        break;

      case '2':
        if (account == null) {
          print("No account exists. Please create an account first.");
          break;
        }
        stdout.write("Enter deposit amount: ");
        double depositAmount = double.parse(stdin.readLineSync()!);
        account.deposit(depositAmount);
        break;

      case '3':
        if (account == null) {
          print("No account exists. Please create an account first.");
          break;
        }
        stdout.write("Enter withdrawal amount: ");
        double withdrawAmount = double.parse(stdin.readLineSync()!);
        account.withdraw(withdrawAmount);
        break;

      case '4':
        if (account == null) {
          print("No account exists. Please create an account first.");
        } else {
          account.viewdetails();
        }
        break;

      default:
        print("Invalid choice. Please enter 1 to 4.");
    }

    stdout.write("\nDo you want to continue? (yes/no): ");
    String Choice = stdin.readLineSync()!;
    if (Choice.toLowerCase()== 'no') {
      
      print("Thank you for using the Banking Management System. Goodbye!");
      return;
    }
  }
}
