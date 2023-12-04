import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import '../../constants/color_constants.dart';
import 'controllers/donation_controller.dart';
import 'donation repository/donation_repo.dart';
import 'testing_dontaion.dart';
//import 'package:flutter_paystack/flutter_paystack.dart';

class DonationPage extends StatefulWidget {
  const DonationPage({super.key});

  @override
  State<DonationPage> createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  final amount = TextEditingController();
  final ref = TextEditingController();
  //final controller = Get.put(DonationController());

  /*String publicKey = "pk_test_ad440c222df8f23953516a8e38e382a00bda5d32";

  String message = "";

  final plugin = PaystackPayment();

  @override
  void initState() {
    plugin.initialize(publicKey: publicKey);
  }

  Future<void> makePayment() async {
    int price = int.parse(amount.text) * 100;
    Charge charge = Charge()
      ..amount = price
      ..reference = 'ref ${DateTime.now()}'
      ..email = ref.text
      ..currency = 'GHS';

    CheckoutResponse response = await plugin.checkout(
      context,
      method: CheckoutMethod.card, // Defaults to CheckoutMethod.selectable
      charge: charge,
    );

    if (response.status == true) {
      message = 'Payment was sucessful. Ref: ${response.reference}';
      if (mounted) {}
      Get.to(
        (
          TestingPage(
            message: message,
          ),
        ),
      );
    } else {
      print(response.message);
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(DonationController());

    final donateFormKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        shadowColor: Colors.grey,
        centerTitle: true,
        title: const Text(
          "Donations",
          style: TextStyle(
            color: kPrimaryC,
          ),
        ),
        //backgroundColor: kPrimaryC,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            LineIcons.arrowLeft,
            color: kPrimaryC,
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GestureDetector(
          onTap: () {
            //makePayment();
            /*DonationController.instance.donate(
              controller.amount.text.trim(),
              controller.ref.text.trim(),  
          );
          */
          },
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kPrimaryC,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Proceed to make payment",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/images/mtn2.png",
                                ),
                                fit: BoxFit.contain,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.2,
                                  spreadRadius: 1.0,
                                  offset: Offset.zero,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/images/airteltigo_logo.png",
                                ),
                                fit: BoxFit.contain,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.2,
                                  spreadRadius: 1.0,
                                  offset: Offset.zero,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/images/vodA.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.2,
                                  spreadRadius: 1.0,
                                  offset: Offset.zero,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/donation.png",
                      height: 200,
                      width: 200,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Make donations to",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      "PENSA AAMUSTED",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Form(
                        key: donateFormKey,
                        child: Column(
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: amount,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Amount Field is required";
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                prefix: Text(
                                  "GHC ",
                                  style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                //hintText: 'Amount',
                                hintStyle:
                                    TextStyle(fontSize: 10, color: kPrimaryC),
                                suffixIcon:
                                    Icon(Icons.attach_money, color: kPrimaryC),
                                labelText: "Amount",
                                labelStyle:
                                    TextStyle(fontSize: 15, color: kPrimaryC),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 15),
                            TextFormField(
                              controller: ref,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Reference field is required";
                                }
                                return null;
                              },
                              decoration: const InputDecoration(
                                hintText: 'Reference',
                                hintStyle:
                                    TextStyle(fontSize: 10, color: kPrimaryC),
                                suffixIcon:
                                    Icon(Icons.note_outlined, color: kPrimaryC),
                                labelText: "Reference",
                                labelStyle:
                                    TextStyle(fontSize: 15, color: kPrimaryC),
                                enabledBorder: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
               
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
