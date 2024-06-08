# Infinite Search

A simple Proof of Concept of a listing feature with infinite scrolling, filtering and search. This little project provides a ViewModel class that can be used to help in the implementation of a infinite scrolling feature, with or without filtering and search, by extending behaviour of the ViewModel class provided. The under the hood implementation is made with MobX(so you need to use Observer in the UI side to have reactivity), but your class that extends the provided ViewModel can be a plain Dart class or any other state management solution.

## How to use

To use the `PaginationController` class, you need to create another class that extends it and override the `request()` method, which will provide the list of the object you have in the listing, and override the `isFilterEmpty` getter, which will inform the controller when to set flag for "No Results" and "Empty" states. If your feature doesn't have any kind of filter(i.e. it's just a simple list with infinite scrolling), you can set it to always return true. Optionally, you can pass the page size of your pagination in the `super` of the `PaginationController` class, and its default value is 10.

## Examples

In the `pages` folder, there are two examples, a simpler one with just the infinite pagination, in which the [simple controller](lib/app/pages/simple/simple_controller.dart) is a plain Dart class that extends the `PaginationController` and implements the needed method and getter, and the [page](lib/app/pages/simple/simple_page.dart) consumes that controller and handle the possible states.

The more complex example has, beyond the infinite scrolling itself, filtering tabs for status, a text field for a textual search and another filter button for user to filter by tags. The logic for the filtering is done inside the [controller](lib/app/pages/complex/complex_controller.dart) that extends `PaginationController`, which will decide when it's needed to reset the list state(its loading, error, actual list and the pagination) based on the design and bussiness needs, with the [page](lib/app/pages/complex/complex_page.dart) handling: when to set the filters and call the `getItems` method and what to render for each state.

## Running the example application

First of all, obviouslly[ setup your Flutter environment](https://docs.flutter.dev/get-started/install), since this is a Flutter project :P

The version for this project in described inside de `.fvmrc` file in root of the project. Set your flutter version for that, either manually or by using [fvm](https://fvm.app), by the following command `fvm use VERSION`.

After that, call `flutter pub get`, or `fvm flutter pub get`, if using fvm, to get all the needed dependencies

At last, call `flutter run` or `fvm flutter run` to run the project, being on iOS, Android, Windows, MacOS or Linux(but the UI itself is meant for mobile devices).
