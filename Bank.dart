//นายธนดล สิงห์เถื่อน ปสสท.3 3651051541129 
class BankAccount{
  double? _balance;
  String? _name;
  @override
  BankAccount(this._balance,this._name);

  double get balance => _balance!;
  set balance (double balance) => this._balance = balance;

  String get name => _name!;
  set name (String name) => this._name = name; 

  void deposit(double amount){
    balance+=amount;
    print("ฝากเงินเข้าบัญชี $name จำนวน $amount บาท");
  }
  void withdraw(double amount){
    balance-=amount;
    print("ถอนเงินออกบัญชี $name จำนวน $amount บาท");
  }
  void showBalance() => print("ชื่อ : $name\nเงินคงเหลือ : $balance บาท");
}
class SavingAccount extends BankAccount{
  double? _interestRate;
  @override
  
  SavingAccount(double _balance,String _name,this._interestRate):super(_balance,_name);  
  
  double get interest => _interestRate!;
  set interest (double interestRate )=> this._interestRate = interest;
  
  
  void addinsert(){
    double interest1 = (balance * interest/100);
    balance = interest1 + balance;
    print("ได้ดอกเบี้ยเงินฝาก : $interest% \nได้เป็นเงิน : $interest1 บาท");
  }
}
void main(List<String> args) {
  var x = SavingAccount(2000, "Thanadol",0.25);
  x.deposit(400);
  x.showBalance();

  x.withdraw(100);
  x.showBalance();

  x.addinsert();
  x.showBalance();

}