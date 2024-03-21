
# ST Bottom Sheet Button

A Flutter package that provides a simple and customizable button to open a bottom modal sheet. Ideal for quick interactions where the user needs to select or view additional information without leaving the current context.

## Features

- Easy to integrate with just a few lines of code.
- Highly customizable button and modal sheet appearance.
- Supports custom widgets in the modal sheet.
- Configurable modal sheet size and behavior.

## Getting Started

To use this package, add `st_bottom_sheet_button` as a dependency in your `pubspec.yaml` file.

## Usage

Import the package in your Flutter application:

```
import 'package:st_bottom_modal_sheet/st_bottom_modal_sheet.dart';

```

Then Use:
```
STBottomSheetButton(
          sheetBackgroundColor: Colors.white,
          contentHeight: 150,
          content: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Logout from this Device"),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Logout from all devices"),
                ),
              ),
            ],
          ),
          child: const Text(
            "Logout",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        );
```

## Screenshots
![screenshot1.jpeg](https://i.ibb.co/tcRwm7h/st-button.jpg)

## Contributing

Contributions are welcome! If you find a bug or have a feature request, please open an issue on our GitHub repository.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
