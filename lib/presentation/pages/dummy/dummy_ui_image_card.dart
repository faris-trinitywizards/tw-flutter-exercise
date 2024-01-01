import 'package:flutter/cupertino.dart';

import '../../../core/commons/colors_const.dart';
import '../../widgets/organisms/ui_helper.dart';
import 'dummy_ui_rectangle_image.dart';

class DummyUiImageCard extends StatelessWidget {
  const DummyUiImageCard({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: UIHelper.padding(top: 4.0),
      padding: UIHelper.padding(horizontal: 8.0, vertical: 20.0),
      decoration: BoxDecoration(
          border: Border.all(color: ColorConstant.grey, width: 0.5),
          borderRadius: UIHelper.borderRadiusCircular(all: 10)),
      child: DummyUiRectangleImage(title: title,),
    );
  }
}