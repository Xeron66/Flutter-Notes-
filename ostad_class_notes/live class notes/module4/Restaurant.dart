class Restaurant {
  int _id = 26565;

  // getter method
  int get ResID => _id;

  // setter
  set setID(int value) {
    _id = value;
  }

  order(String item) {
    print("$item Ordered!");
    _shopping(item);
    _prepareItem(item);
  }

  _shopping(String item){
    print("$item Shopped!");
  }

  _prepareItem(String item) {
    print("$item Preparing!");
  }

}