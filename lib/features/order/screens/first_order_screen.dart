import 'package:auto_route/annotations.dart';
import 'package:f_test_work/core/ui/input/common_input.dart';
import 'package:f_test_work/core/ui/input/date_input.dart';
import 'package:f_test_work/core/ui/layout/base_container.dart';
import 'package:f_test_work/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

@RoutePage()
class FirstOrderScreen extends StatefulWidget {
  const FirstOrderScreen({super.key});

  @override
  State<FirstOrderScreen> createState() => _FirstOrderScreenState();
}

class _FirstOrderScreenState extends State<FirstOrderScreen> {
  final form = FormGroup({
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
        backgroundColor: Colors.red,
      ),
      body: BaseContainer(
        child: SingleChildScrollView(
            child: ReactiveForm(
                formGroup: form,
                child: const Column(
                  children: [
                    DateInput(),
                    CommonTextInput(
                      autofillHints: [],
                      title: 'FullName',
                      hint: "FullName",
                      icon: Images.user,
                      formControlName: 'name',
                    ),
                    CommonTextInput(
                      autofillHints: [
                        AutofillHints.email,
                      ],
                      title: 'Email',
                      hint: "Email",
                      icon: Images.email,
                      formControlName: 'email',
                    ),
                    CommonTextInput(
                      autofillHints: [
                        AutofillHints.telephoneNumber,
                      ],
                      title: 'Phone',
                      hint: "Phone",
                      icon: Images.phone,
                      formControlName: 'phone',
                    ),
                    CommonTextInput(
                      autofillHints: [
                        AutofillHints.countryName,
                      ],
                      title: 'Country',
                      hint: "Country",
                      icon: Images.country,
                      formControlName: 'country',
                    ),
                    CommonTextInput(
                      autofillHints: [
                        AutofillHints.addressCity,
                      ],
                      title: 'City',
                      hint: "City",
                      icon: Images.city,
                      formControlName: 'city',
                    ),
                    CommonTextInput(
                      autofillHints: [
                        AutofillHints.postalCode,
                      ],
                      title: 'ZipCode',
                      hint: "ZipCode",
                      icon: Images.zipcode,
                      formControlName: 'postcode',
                    ),
                  ],
                ))),
      ),
    );
  }
}
