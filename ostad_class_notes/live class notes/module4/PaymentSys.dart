// interfaces!
// class must be abstract
// the methods are overriden

abstract class Paymentsys {
  cashOut(double amount);
  cashIn(double amount);
}

class bKash implements Paymentsys {
 @override
  cashIn(double amount) {
    print("Cash in Free!");
  }

  @override
  cashOut(double amount) {
    print("Cash out 20 per 1k");
  }
  
}

class Nagad implements Paymentsys {
 @override
  cashIn(double amount) {
    print("Cash in Free!");
  }

  @override
  cashOut(double amount) {
    print("Cash out 16 per 1k");
  }
  
}