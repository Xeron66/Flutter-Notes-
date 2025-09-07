// importing stuffs
import 'BankAccount.dart';
import 'PaymentSys.dart';
import 'Restaurant.dart';


void main(List<String> args) {

  // example using restaurent
  Restaurant res = Restaurant();
  res.order('Chicken Burger');

  // Example using bankaccount
  Bankaccount acc = Bankaccount('1123');

  acc.deposit(1000);
  acc.getBalance('1123');

  // example of polymorphism
  // meaning: many shapes!
  Paymentsys payment1 = bKash();
  payment1.cashIn(500);
  payment1.cashOut(1000);

  Paymentsys payment2 = Nagad();
  payment2.cashIn(500);
  payment2.cashOut(1000);
}