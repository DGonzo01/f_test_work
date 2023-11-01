import 'package:auto_route/annotations.dart';
import 'package:f_test_work/core/ui/input/date_input.dart';
import 'package:f_test_work/core/ui/layout/base_container.dart';
import 'package:f_test_work/features/order/models/order_model.dart';
import 'package:f_test_work/features/order/widgets/order_info_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<OrderModel> listSendInfo = [];
  List<OrderModel> listRecipientInfo = [];

  final senderForm = FormGroup({
    'name': FormControl<String>(value: '', validators: [Validators.required]),
    'email': FormControl<String>(
        value: '', validators: [Validators.required, Validators.email]),
    'phone': FormControl<String>(value: ''),
    'country':
        FormControl<String>(value: '', validators: [Validators.required]),
    'city': FormControl<String>(value: '', validators: [Validators.required]),
    'address':
        FormControl<String>(value: '', validators: [Validators.required]),
    'postcode': FormControl<String>(
        value: '', validators: [Validators.required, Validators.number]),
  }, validators: [
    Validators.mustMatch('email', 'email 1111'),
    Validators.mustMatch('password', 'name'),
  ]);

  final recipientAddressForm = FormGroup({
    'name': FormControl<String>(value: ''),
    'email': FormControl<String>(value: ''),
    'phone': FormControl<String>(value: ''),
    'country': FormControl<String>(value: ''),
    'city': FormControl<String>(value: ''),
    'address': FormControl<String>(value: ''),
    'postcode': FormControl<String>(value: ''),
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Ordering'),
      ),
      body: BaseContainer(
        child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: DateInput()),
                      OrderInfoUser(title: 'Sender details', form: senderForm),
                      OrderInfoUser(
                          title: 'Recipient adress',
                          form: recipientAddressForm),
                    ],
                  ),
                  SizedBox(
                    height: 10.w,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Next step')),
                  SizedBox(
                    height: 20.w,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
