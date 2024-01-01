import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/routes/app_router_path.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/action_text.dart';

import '../../widgets/organisms/ui_helper.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: UIHelper.padding(vertical: 24.0, horizontal: 24.0),
          child: Column(
            children: [
              ActionText(
                onTap: () {
                  context.router.navigateNamed(AppRouterPath.dummyUiFirstPage);
                },
                title: "Dummy UI",
                desc: "Introduction basic flutter widget ui",
              ),
              ActionText(
                onTap: () {},
                title: "Counter Example (State Management)",
                desc: "Introduction of state management using flutter_bloc. Level: 1",
              ),
              ActionText(
                onTap: () {},
                title: "Input Validations Example",
                desc:
                    "Flutter state management using flutter_bloc to handle validation in text field. Level 2",
              ),
              ActionText(
                onTap: () {},
                title: "Calculator Example (State Management)",
                desc:
                    "Flutter state management using flutter_bloc to calculate simple syntax. Level: 3",
              ),
              ActionText(
                onTap: () {},
                title: "News App",
                desc: "Api calling using free source from NYTimes",
              ),
              ActionText(
                onTap: () {},
                title: "To Do App",
                desc:
                    "Create a to do list that saved in local storage using hydrated_bloc: Level: 4",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
