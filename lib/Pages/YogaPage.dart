import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class paymentRazor extends StatefulWidget {
  const paymentRazor({Key? key}) : super(key: key);

  @override
  State<paymentRazor> createState() => _paymentRazorState();
}

class _paymentRazorState extends State<paymentRazor> {
  late Razorpay razorpay;
  var amountController = TextEditingController();
  @override
  void initState() {
    super.initState();
    razorpay = new Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    print("Payment Successful");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    print("Payment fail");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet is selected
  }
  @override
  void dispose(){
    super.dispose();
    razorpay.clear();
  }

  void openCheckout(){
    var options = {
      'key': "rzp_test_tSSYmxi56pEvaH",
      //amount is in paise, so send in multiple of 100
      'amount': (int.parse(amountController.text)*100).toString(), //in the smallest currency sub-unit.
      'name': 'Meet',

      'description': 'Meal',
      'timeout': 300, // in seconds
      'prefill': {
        'contact': '7021397370',
        'email': 'meetsavla@gmail.com'
      },
      "external": {
        "wallets" : ["paytm "]
      }
    };
    try{
      razorpay.open(options);
    }
    catch(e){
      print(e.toString());
    }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: TextField(
                controller: amountController,
                decoration: const InputDecoration(
                  hintText: "Enter Amount",
                ),
              ),
            ),
            CupertinoButton(
                color: Colors.grey,
                child: const Text("Pay Amount"),
                onPressed: (){openCheckout();}),
          ], //children
        ),
      ),
    );
  }
}
