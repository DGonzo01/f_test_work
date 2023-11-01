import 'package:auto_route/annotations.dart';
import 'package:f_test_work/core/ui/input/common_input.dart';
import 'package:f_test_work/core/ui/input/date_input.dart';
import 'package:f_test_work/core/ui/layout/base_container.dart';
import 'package:f_test_work/features/order/widgets/order_info_user.dart';
import 'package:f_test_work/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final senderForm = FormGroup({
    'name': FormControl<String>(value: ''),
    'email': FormControl<String>(value: ''),
    'phone': FormControl<String>(value: ''),
    'country': FormControl<String>(value: ''),
    'city': FormControl<String>(value: ''),
    'address': FormControl<String>(value: ''),
    'postcode': FormControl<String>(value: ''),
  });

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
        title: const Text('Ordering'),
      ),
      body: BaseContainer(
        child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 50),
            child: SingleChildScrollView(
                child: Column(
              children: [
                const DateInput(),
                OrderInfoUser(title: 'Sender details', form: senderForm),
                OrderInfoUser(
                    title: 'Recipient adress', form: recipientAddressForm),
              ],
            ))),
      ),
    );
  }
}
