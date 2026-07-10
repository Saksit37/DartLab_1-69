abstract class PaymentMethod {
  void pay(double amount);
}

// ชำระด้วยบัตรเครดิต
class CreditCard extends PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระเงินด้วยบัตรเครดิต $amount บาท");
  }
}

// ชำระด้วย PromptPay
class PromptPay extends PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระเงินด้วย PromptPay $amount บาท");
  }
}

// ชำระเงินปลายทาง
class CashOnDelivery extends PaymentMethod {
  @override
  void pay(double amount) {
    print("ชำระเงินปลายทาง $amount บาท");
  }
}

void main() {
  List<PaymentMethod> payments = [
    CreditCard(),
    PromptPay(),
    CashOnDelivery(),
  ];

  print("\n========== Payment ==========");

  for (PaymentMethod payment in payments) {
    payment.pay(1525.0);
  }
}

//จากที่ศึกษามา Abstract Class เวลาสืบทอดนิยมใช้ extends มากกว่า