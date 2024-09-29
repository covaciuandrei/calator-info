import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';

class FlagsBox extends StatelessWidget {
  const FlagsBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          Flag.fromCode(
            FlagsCode.RO,
            height: 40,
            width: 40,
            fit: BoxFit.fill,
            flagSize: FlagSize.size_1x1,
            borderRadius: 25,
          ),
          Flag.fromCode(
            FlagsCode.AT,
            height: 40,
            width: 40,
            fit: BoxFit.fill,
            flagSize: FlagSize.size_1x1,
            borderRadius: 25,
          ),
          Flag.fromCode(
            FlagsCode.DE,
            height: 40,
            width: 40,
            fit: BoxFit.fill,
            flagSize: FlagSize.size_1x1,
            borderRadius: 25,
          ),
          Flag.fromCode(
            FlagsCode.BE,
            height: 40,
            width: 40,
            fit: BoxFit.fill,
            flagSize: FlagSize.size_1x1,
            borderRadius: 25,
          ),
        ],
      ),
    );
  }
}
