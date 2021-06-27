import 'package:bs_flutter_responsive/bs_flutter_responsive.dart';
import 'package:bs_flutter_buttons/bs_flutter_buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bootstrap Button'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: BsRow(
            children: [
              BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                padding: EdgeInsets.only(left: 10.0),
                sizes: ColScreen.all(Col.col_12),
                child: Wrap(
                  children: [
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      prefixIcon: Icons.block,
                      label: Text('Primary'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      prefixIcon: Icons.block,
                      label: Text('Secondary'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.success,
                      prefixIcon: Icons.block,
                      label: Text('Success'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.danger,
                      prefixIcon: Icons.block,
                      label: Text('Danger'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.warning,
                      prefixIcon: Icons.block,
                      label: Text('Warning'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.info,
                      prefixIcon: Icons.block,
                      label: Text('Info'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.light,
                      prefixIcon: Icons.block,
                      label: Text('Light'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.dark,
                      prefixIcon: Icons.block,
                      label: Text('Dark'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(bottom: 10.0),
                      onPressed: () {},
                      size: BsButtonSize.btnIconMd,
                      prefixIcon: Icons.check,
                    )
                  ],
                ),
              ),
              BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                padding: EdgeInsets.only(left: 10.0),
                sizes: ColScreen.all(Col.col_12),
                child: Wrap(
                  children: [
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.outlinePrimary,
                      label: Text('Outline Primary'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.outlineSecondary,
                      label: Text('Outline Secondary'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.outlineSuccess,
                      label: Text('Outline Success'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.outlineDanger,
                      label: Text('Outline Danger'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.outlineInfo,
                      label: Text('Outline Info'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.outlineLight,
                      label: Text('Outline Light'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.outlineDark,
                      label: Text('Outline Dark'),
                    ),
                  ],
                ),
              ),
              BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                padding: EdgeInsets.only(left: 10.0),
                sizes: ColScreen.all(Col.col_12),
                child: Wrap(
                  children: [
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      size: BsButtonSize.btnSm,
                      label: Text('Small'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      label: Text('Medium'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      size: BsButtonSize.btnLg,
                      label: Text('Large'),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      size: BsButtonSize.btnIconSm,
                      prefixIcon: Icons.check,
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      size: BsButtonSize.btnIconMd,
                      prefixIcon: Icons.check,
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      size: BsButtonSize.btnIconLg,
                      prefixIcon: Icons.check,
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      size: BsButtonSize.btnSm,
                      label: Text('Small'),
                      prefixIcon: Icons.calendar_today,
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      label: Text('Medium'),
                      prefixIcon: Icons.calendar_today,
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      size: BsButtonSize.btnLg,
                      label: Text('Large'),
                      prefixIcon: Icons.calendar_today,
                    ),
                  ],
                ),
              ),
              BsCol(
                margin: EdgeInsets.only(bottom: 10.0),
                sizes: ColScreen.all(Col.col_12),
                padding: EdgeInsets.only(left: 10.0),
                child: Wrap(
                  children: [
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      size: BsButtonSize.btnSm,
                      label: Text('Small'),
                      prefixIcon: Icons.edit,
                      badge: BsBadge(
                        style: BsBadgeStyle.info,
                        size: BsBadgeSize.small,
                        child: Text('4'),
                      ),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      size: BsButtonSize.btnMd,
                      label: Text('Notification'),
                      prefixIcon: Icons.calendar_today,
                      badge: BsBadge(
                        style: BsBadgeStyle.warning,
                        child: Text('4'),
                      ),
                    ),
                    BsButton(
                      margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
                      onPressed: () {},
                      style: BsButtonStyle.primary,
                      size: BsButtonSize.btnLg,
                      label: Text('Notification'),
                      prefixIcon: Icons.calendar_today,
                      badge: BsBadge(
                        style: BsBadgeStyle.success,
                        size: BsBadgeSize.large,
                        child: Text('4'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
