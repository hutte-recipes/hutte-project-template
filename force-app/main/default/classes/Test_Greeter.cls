@isTest
private class Test_Greeter {
  @isTest
  static void greet() {
    System.assertEquals(Greeter.greet('John'), 'Hello John from Greeter');
  }
}
