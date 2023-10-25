import "dart:io";

/*
PROGRAM TO CALCULATE USER'S OPERAND
1. Welcome User
2. Get users name & email
3. Greet User(Name)
4. Choose option
5. Get Users Operand
6. calculate
7. display result
8. Stop
*/
void main() {
// This function welcomes the user
  print("*******************************************************************");
  print("****************** SIMPLE CALCULATOR - Emmanuel Anowai ******************");
  print("*******************************************************************");

// This Function collects users profile
print("Please enter your First name:");
var userName =  stdin.readLineSync();
print("Please Enter your email");
var userEmail = stdin.readLineSync();
print("Hello, $userName");
// User Authentication
print("Login with your email");
var user = stdin.readLineSync();

if (user == userEmail) {
  generalLogic();
}
  else {
    print("Access denied!");
  }
generalLogic();

}
generalLogic() {
print("Choose an Option");
print("Enter 1 for Addition");
print("Enter 2 for Subtraction");
print("Enter 3 for Multiplication");

// User should select an option
var optionSelected = stdin.readLineSync();

if (optionSelected == "1") {
  doAddition();
}
else if(optionSelected == "2") {
  doSubtraction();
}
else if(optionSelected == "3") {
    doMultiplication();
  }
  else {
    print("Invalid input, please try again");
  }
}

// Addition Function
    doAddition() {
      print("Enter the first Operand");
      int operand1 = int.parse(stdin.readLineSync()!);
      print("Enter the second Operand");
      int operand2 = int.parse(stdin.readLineSync()!);
      int result = operand1 + operand2;
      print("The result is: ${result}");
      continueProgram();
    }

// Subtraction function
    doSubtraction() {
      print("Enter the first Operand");
      int operand1 = int.parse(stdin.readLineSync()!);
      print("Enter the second Operand");
      int operand2 = int.parse(stdin.readLineSync()!);
      int result = operand1 - operand2;
      print("The result is: ${result}");
      continueProgram();
    }

// Multiplication Function
    doMultiplication() {
      print("Enter the first Operand");
      int operand1 = int.parse(stdin.readLineSync()!);
      print("Enter the second Operand");
      int operand2 = int.parse(stdin.readLineSync()!);
      int result = operand1 * operand2;
      print("The result is: ${result}");
      continueProgram();
    }

    // This function will ask the user if he wants to continue the calculation 
    continueProgram() {
      print("Do you want to continue? (yes/no)");
      var optionSelected1 = stdin.readLineSync();

      if (optionSelected1 == "yes") {
        generalLogic();
      }
      else if(optionSelected1 == "no") {
        print('Thank you for calculating with us');
        generalLogic();
      }
      else{
        print("Invalid entry");
      }
    }