# bs_flutter_buttons

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_buttons/main/screenshot/example.png "Screenshot Example Buttons")

Bootstrap’s custom button styles for actions in forms, dialogs, and more with support for multiple sizes, states, and more.

## Getting Started
Add the dependency in `pubspec.yaml`:

```yaml
dependencies:
  ...
  bs_flutter_buttons: any
```

## Buttons
Example: [`example_buttons.dart`](https://github.com/kholifanalfon/bs_flutter_buttons/blob/main/example/lib/main.dart)

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_buttons/main/screenshot/example.png "Screenshot Example Buttons")

We have 15 button style and 3 button size, but you can create custom size using `BsButtonSize` and custom style using `BsButtonStyle`

```dart
  static const BsButtonStyle primary = BsButtonStyle(
    color: Colors.white,
    borderColor: BsColor.primary,
    backgroundColor: BsColor.primary,
    borderRadius: BorderRadius.all(Radius.circular(3.0))
  );
```

```dart
  static const BsButtonSize btnIconSm = BsButtonSize(
    iconSize: 12.0,
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
    minimumSize: Size(30.0, 30.0),
  );
```

To create some button use `BsButton`

```dart
// ...
  BsButton(
    margin: EdgeInsets.only(right: 10.0, bottom: 10.0),
    onPressed: () {},
    style: BsButtonStyle.primary,
    size: BsButtonSize.btnIconMd,
    prefixIcon: Icons.check,
  ),
// ...
```

Dropdown buttons

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_buttons/main/screenshot/example.gif "Screenshot Example Buttons")

```dart
// ...
  BsDropdownButton(
    margin: EdgeInsets.only(right: 5.0, left: 450),
    toggleMenu: (_) => BsButton(
      onPressed: () => _.toggle(),
      style: BsButtonStyle.primary,
      size: BsButtonSize.btnSm,
      label: Text('Primary'),
    ),
    dropdownDirection: Axis.horizontal,
    dropdownMenu: BsDropdownMenu(
      children: [
        BsDropdownItem(child: Text('Action')),
        BsDropdownItem(child: Text('Another Action')),
        BsDropdownItem(child: Text('Something else here')),
        BsDropdownDivider(),
        BsDropdownItem(child: Text('Separate link')),
      ],
    ),
  )
// ...
```
