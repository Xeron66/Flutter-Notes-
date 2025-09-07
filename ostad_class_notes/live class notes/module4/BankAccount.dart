class Bankaccount {

  double _balance = 0;
  final String _pin;

  // constructor
  Bankaccount(this._pin) {

  }

  // getter method
  // double get balance => _balance;
  double getBalance (String pin) {
    if (pin == this._pin) {
      return _balance;
    } else {
      throw Exception("Unauthorized Access!");
    }
  }

  deposit (double amount) {
    _balance += amount;
    print("$amount Deposited!");
  }

  withdraw(double amount) {
    if (amount > 0 && amount <= _balance)
    {
      _balance -= amount;
      print("$amount Withdrawn!");
    } else {
      print("Balance too low!");
    }  
  }

}