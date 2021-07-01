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

Default dropdown button

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_buttons/main/screenshot/example.gif "Screenshot Example Buttons")

```dart
// ...
    BsDropdownButton(
      margin: EdgeInsets.only(right: 5.0),
      toggleMenu: (_) => BsButton(
        onPressed: () => _.toggle(),
        style: BsButtonStyle.primary,
        suffixIcon: Icons.arrow_drop_down,
        label: Text('Primary'),
      ),
      dropdownMenu: BsDropdownMenu(
        children: [
          BsDropdownHeader(child: Text('Dropdown Header')),
          BsDropdownItem(child: Text('Action')),
          BsDropdownItem(child: Text('Another Action')),
          BsDropdownItem(child: Text('Something else here')),
          BsDropdownItem(child: Text('Separate link')),
        ],
      ),
    )
// ...
```

To configure maximum/minimum width and height, you can use property `dropdownMenuSize`
the default of minimum height and width is 150

```dart
    BsDropdownButton(
      // ...
      dropdownMenuSize: BsDropdownMenuSize(
        minWidth: 150,
        maxWidth: 300,
        minHeight: 150,
        maxHeight: 300
      ),
      // ...
    )
```

If you want to create dropdown in left/right side of button, you can use property `dropdownDirection`

```dart

  BsDropdownButton(
    // ...
    dropdownDirection: Axis.horizontal,
    // ...
  ),
```

If you want to customize dropdown style, you can use property `dropdownMenuStyle`

```dart
  BsDropdownButton(
    // ...
    dropdownMenuStyle: BsDropdownMenuStyle(
      backgroundColor: Colors.red,
      boxShadow: [
        BoxShadow(
          color: Color(0xffd9d9d9),
          spreadRadius: 2.0,
          blurRadius: 5.0
        )
      ]
    ),
    // ...
  ),
```

You can also set dropdown item to `active` and `disabled`
If you want to customize `active` or `disabled` style, you can use property `activeStyle`, `activeTextStyle`, `disabledStyle` and `disabledTextStyle`

```dart
  BsDropdownButton(
    // ...
    dropdownMenu: BsDropdownMenu(
      children: [
        BsDropdownItem(
          child: Text('Action'), 
          active: true, 
          activeStyle: ButtonStyle(),
          activeTextStyle: TextStyle(),
        ),
        BsDropdownItem(
          child: Text('Another Action'), 
          disabled: true, 
          disabledStyle: ButtonStyle(),
          disabledTextStyle: TextStyle(),
        ),
        BsDropdownItem(child: Text('Something else here')),
        BsDropdownDivider(),
        BsDropdownItem(child: Text('Separate link')),
      ],
    )
  // ...
  ),
```