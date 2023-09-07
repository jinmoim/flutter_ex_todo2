import 'package:flutter/material.dart';
import 'package:flutter_ex_todo2/core/app_export.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_image.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_ex_todo2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_ex_todo2/widgets/custom_elevated_button.dart';
import 'package:flutter_ex_todo2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddAddressScreen extends StatelessWidget {
  AddAddressScreen({Key? key}) : super(key: key);

  TextEditingController countryController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController streetaddressController = TextEditingController();

  TextEditingController streetaddressController1 = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController oldpasswordoneController = TextEditingController();

  TextEditingController zipcodeController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 40.h,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleftBlueGray300,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 15.v, bottom: 16.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                title: AppbarSubtitle(
                    text: "Add Address", margin: EdgeInsets.only(left: 12.h))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 10.v),
                    child: Column(children: [
                      SizedBox(height: 29.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, right: 16.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Country or region",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller: countryController,
                                            hintText:
                                                "Enter the country or region"),
                                        SizedBox(height: 22.v),
                                        Text("First Name",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 13.v),
                                        CustomTextFormField(
                                            controller: firstNameController,
                                            hintText: "Enter the first name"),
                                        SizedBox(height: 22.v),
                                        Text("Last Name",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                            controller: lastNameController,
                                            hintText: "Enter the last name"),
                                        SizedBox(height: 23.v),
                                        Text("Street Address",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                            controller: streetaddressController,
                                            hintText:
                                                "Enter the street address"),
                                        SizedBox(height: 21.v),
                                        Text("Street Address 2 (Optional)",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 16.v),
                                        CustomTextFormField(
                                            controller:
                                                streetaddressController1,
                                            hintText:
                                                "Enter the street address 2"),
                                        SizedBox(height: 22.v),
                                        Text("City",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller: cityController,
                                            hintText: "Enter the city"),
                                        SizedBox(height: 23.v),
                                        Text("State/Province/Region",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                            controller:
                                                oldpasswordoneController,
                                            hintText:
                                                "Enter the state/province/region"),
                                        SizedBox(height: 24.v),
                                        Text("Zip Code",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 11.v),
                                        CustomTextFormField(
                                            controller: zipcodeController,
                                            hintText: "Enter the zip code",
                                            textInputType:
                                                TextInputType.number),
                                        SizedBox(height: 23.v),
                                        Text("Phone Number",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 12.v),
                                        CustomTextFormField(
                                            controller: phoneNumberController,
                                            hintText: "Enter the phone number",
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType: TextInputType.phone)
                                      ]))))
                    ]))),
            bottomNavigationBar: CustomElevatedButton(
                text: "Add Address",
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
                onTap: () {
                  onTapAddaddress(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the addressScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the addressScreen.
  onTapAddaddress(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addressScreen);
  }
}
