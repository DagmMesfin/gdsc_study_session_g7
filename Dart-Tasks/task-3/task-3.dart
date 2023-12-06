import 'dart:async';

class Calculator{
  double add(double num1, double num2){
    return num1+num2;
  }
  double subtract(double num1, double num2){
    return num1-num2;
  }
  double multiply(double num1, double num2){
    return num1*num2;
  }
  double ?divide(double num1, double num2){
    if (num2 == 0){
      try{
        if (num2 == 0) {
        throw FormatException('Cannot divide by zero!');
      }
      }
      catch(e){
        print('Error occurred: $e');
      }
      
    }
    else{
      return num1/num2;
    }
    
  }
}

main(){
  final calculate = Calculator();
  var num1 = 1.0;
  var num2 = 0.0;
  print("From the give numbers $num1 and $num2, we get:");
  Future.delayed(Duration(seconds: 5)).then((_) => print("Addition: ${calculate.add(num1, num2)}"));
  Future.delayed(Duration(seconds: 5)).then((_) => print("Subtraction: ${calculate.subtract(num1, num2)}"));
  Future.delayed(Duration(seconds: 5)).then((_) => print("Multiplication: ${calculate.multiply(num1, num2)}"));
  Future.delayed(Duration(seconds: 5)).then((_) => print("Division: ${calculate.divide(num1, num2)}"));
    
}

