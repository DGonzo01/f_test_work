import 'package:f_test_work/core/ui/input/common_input.dart';
import 'package:f_test_work/features/order/widgets/order_segment_button.dart';
import 'package:f_test_work/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

class OrderInfoUser extends StatefulWidget {
  const OrderInfoUser({super.key, required this.title, required this.form});

  final String title;
  final FormGroup form;

  @override
  State<OrderInfoUser> createState() => _OrderInfoUserState();
}

class _OrderInfoUserState extends State<OrderInfoUser> {
  bool isActiveTabAdd = true;
  //
  // void onChangeTab() {
  //   if (isActiveTabAdd) {}
  // }

  void activeAddTab() {
    if (isActiveTabAdd) return;
    setState(() {
      isActiveTabAdd = true;
    });
  }

  void activeSelectedTab() {
    if (!isActiveTabAdd) return;
    setState(() {
      isActiveTabAdd = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.all(20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title),
          SizedBox(
            height: 16.w,
          ),
          Row(
            children: [
              OrderSegmentButton(
                  title: 'Add adress',
                  isActive: isActiveTabAdd,
                  onTap: activeAddTab),
              SizedBox(width: 8.w),
              OrderSegmentButton(
                  title: 'Add adress',
                  isActive: !isActiveTabAdd,
                  onTap: activeSelectedTab),
            ],
          ),
          SizedBox(
            height: 20.w,
          ),
          ReactiveForm(
              formGroup: widget.form,
              child: const Column(
                children: [
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
              ))
        ],
      ),
    );
  }
}
