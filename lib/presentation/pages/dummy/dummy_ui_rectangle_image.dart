import 'package:flutter/cupertino.dart';
import 'package:trinity_lecture_app/presentation/widgets/atoms/text_theme_extension.dart';

import '../../../core/commons/constants.dart';
import '../../widgets/organisms/ui_helper.dart';

class DummyUiRectangleImage extends StatelessWidget {
  const DummyUiRectangleImage({super.key, this.imgSrc, this.title});

  final String? imgSrc;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: UIHelper.borderRadiusCircular(all: 10.0),
          child: Image.network(
            imgSrc ?? Constants.dummyImg,
            width: UIHelper.setSp(70.0),
            height: UIHelper.setSp(70.0),
            fit: BoxFit.cover,
          ),
        ),
        UIHelper.verticalSpace(4.0),
        if (title != null) Text(title!, style: context.textTheme.bodySmall,)
      ],
    );
  }
}