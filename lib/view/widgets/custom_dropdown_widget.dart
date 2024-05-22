import 'package:flutter/material.dart';
import 'package:tremortech/util/dimensiona.dart';

class CustomDropdownWidget extends StatefulWidget {
  final List<String> items;
  final String selectedValue;
  final void Function(String?)? onChanged;
  const CustomDropdownWidget({super.key, 
    required this.items,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  State<CustomDropdownWidget> createState() => _CustomDropdownWidgetState();
}

class _CustomDropdownWidgetState extends State<CustomDropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.paddingSizeSmall,
          vertical: Dimensions.paddingSizeExtraSmall),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radiusDefault),
          color: Theme.of(context).disabledColor.withOpacity(0.2)),
      child: DropdownButton<String>(
        value: widget.selectedValue,
        items: widget.items.map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(color: Colors.black),
            ),
          );
        }).toList(),
        onChanged: widget.onChanged,
        isExpanded: true,
        underline: const SizedBox(),
        style: const TextStyle(
          color: Colors.black,
        ),
        iconEnabledColor: Colors.black,
        icon: const Icon(Icons.arrow_drop_down),
        hint: const Text(
          'Select',
          style: TextStyle(color: Colors.grey),
        ),
        elevation: 16,
        borderRadius: BorderRadius.circular(10),
        dropdownColor: Colors.white,
      ),
    );
  }
}
