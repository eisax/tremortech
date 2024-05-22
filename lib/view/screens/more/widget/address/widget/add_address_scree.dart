import 'package:tremortech/controller/category_controller.dart';
import 'package:tremortech/util/dimensiona.dart';
import 'package:tremortech/view/widgets/custom_selection_box_widget.dart';
import 'package:tremortech/view/widgets/textinput_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  String selectedAddressTag = "Home";
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryController>(
      builder: (categoryController) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Add New Address",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        body: SafeArea(
          child: Container(
            height: Get.height,
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.paddingSizeDefault,
            ),
            color: Colors.white,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.paddingSizeExtraSmall,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Text(
                          "Full Name",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        SizedBox(
                          height: 50,
                          child: CustomTextField(
                            borderRadius: Dimensions.radiusDefault,
                            hintText: 'e.g Jack Dicles',
                            controller: TextEditingController(),
                            focussedBorderColor: Theme.of(context).primaryColor,
                            fillColor: Colors.transparent,
                            inputType: TextInputType.emailAddress,
                            borderColor:
                                Theme.of(context).hintColor.withOpacity(
                                      0.5,
                                    ),
                            borderWidth: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.paddingSizeExtraSmall,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Text(
                          "Phone",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        SizedBox(
                          height: 50,
                          child: CustomTextField(
                            borderRadius: Dimensions.radiusDefault,
                            hintText: 'e.g +26379876543',
                            controller: TextEditingController(),
                            focussedBorderColor: Theme.of(context).primaryColor,
                            fillColor: Colors.transparent,
                            inputType: TextInputType.emailAddress,
                            borderColor:
                                Theme.of(context).hintColor.withOpacity(
                                      0.5,
                                    ),
                            borderWidth: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.paddingSizeExtraSmall,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Text(
                          "Address Line 1",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        SizedBox(
                          height: 50,
                          child: CustomTextField(
                            borderRadius: Dimensions.radiusDefault,
                            hintText: '45 St Hellens',
                            controller: TextEditingController(),
                            focussedBorderColor: Theme.of(context).primaryColor,
                            fillColor: Colors.transparent,
                            inputType: TextInputType.emailAddress,
                            borderColor:
                                Theme.of(context).hintColor.withOpacity(
                                      0.5,
                                    ),
                            borderWidth: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.paddingSizeExtraSmall,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Row(
                          children: [
                            Text(
                              "Address Line 2",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                            ),
                            Text(
                              "(Optional)",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.italic,
                                      color: Theme.of(context).hintColor),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        SizedBox(
                          height: 50,
                          child: CustomTextField(
                            borderRadius: Dimensions.radiusDefault,
                            hintText: '45 St Hellens ClOse B',
                            controller: TextEditingController(),
                            focussedBorderColor: Theme.of(context).primaryColor,
                            fillColor: Colors.transparent,
                            inputType: TextInputType.emailAddress,
                            borderColor:
                                Theme.of(context).hintColor.withOpacity(
                                      0.5,
                                    ),
                            borderWidth: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.paddingSizeExtraSmall,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Text(
                          "City",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        SizedBox(
                          height: 50,
                          child: CustomTextField(
                            borderRadius: Dimensions.radiusDefault,
                            hintText: 'Harare',
                            controller: TextEditingController(),
                            focussedBorderColor: Theme.of(context).primaryColor,
                            fillColor: Colors.transparent,
                            inputType: TextInputType.emailAddress,
                            borderColor:
                                Theme.of(context).hintColor.withOpacity(
                                      0.5,
                                    ),
                            borderWidth: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.paddingSizeExtraSmall,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Text(
                          "Country",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        SizedBox(
                          height: 50,
                          child: CustomTextField(
                            borderRadius: Dimensions.radiusDefault,
                            hintText: 'New Zeeland',
                            controller: TextEditingController(),
                            focussedBorderColor: Theme.of(context).primaryColor,
                            fillColor: Colors.transparent,
                            inputType: TextInputType.emailAddress,
                            borderColor:
                                Theme.of(context).hintColor.withOpacity(
                                      0.5,
                                    ),
                            borderWidth: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.paddingSizeExtraSmall,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: Dimensions.paddingSizeDefault,
                        ),
                        Text(
                          "Address Tag",
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SizedBox(
                          height: Dimensions.paddingSizeSmall,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: Dimensions.paddingSizeSmall),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: ["HOME", "OFFICE", "OTHER"]
                                .map(
                                  (addressTag) => GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedAddressTag = addressTag;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      width: Get.width * 0.25,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      padding: EdgeInsets.all(
                                        Dimensions.paddingSizeDefault,
                                      ),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            Dimensions.radiusSmall,
                                          ),
                                          color: selectedAddressTag ==
                                                  addressTag
                                              ? Theme.of(context).primaryColor
                                              : Colors.transparent,
                                          border: Border.all(
                                            width: 1,
                                            color: selectedAddressTag !=
                                                    addressTag
                                                ? Theme.of(context).primaryColor
                                                : Colors.transparent,
                                          )),
                                      child: Center(
                                        child: Text(
                                          addressTag,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                color: selectedAddressTag ==
                                                        addressTag
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontWeight: FontWeight.w400,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimensions.paddingSizeExtraSmall,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SelectionBoxWidget(
                                  width: 20,
                                  height: 20,
                                  value: false,
                                  activeColor: Theme.of(context).primaryColor,
                                  onChanged: (bool value) {},
                                ),
                                SizedBox(
                                  width: Dimensions.paddingSizeSmall,
                                ),
                                Text(
                                  "Make it default address",
                                  selectionColor: null,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: Theme.of(context).hintColor),
                                ),
                              ],
                            ),
                            Text(
                              "Delete this",
                              selectionColor: null,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.red),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.paddingSizeExtraLarge,
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          width: Get.width,
          padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  width: 0.5,
                  color: Theme.of(context).dividerColor.withOpacity(0.1))),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              animationDuration: const Duration(milliseconds: 500),
              elevation: 0,
              backgroundColor: Theme.of(context).primaryColor,
              textStyle: const TextStyle(
                  color: Colors.white, fontStyle: FontStyle.normal),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  100,
                ),
              ),
              shadowColor: Colors.transparent,
            ),
            onPressed: () async {},
            child: Text(
              "Save",
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
