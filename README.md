# Ejara Flutter Test

Ejara Flutter project test.

## How to Use

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/Asam237/flutter_test
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get 
```

## Boilerplate Features:

* Login
* Home
* Add Payment
* Http

### Libraries & Tools Used

* [Http](https://pub.dev/packages/http)
* [Flutter Toast](https://pub.dev/packages/fluttertoast)

### Folder Structure
Here is the core folder structure which flutter provides.

```
flutter-app/
|- android
|- build
|- ios
|- lib
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- api/
|- commons/
|- langs/
|- views/
|- main.dart
```

Now, lets dive into the lib folder which has the main code for the application.

```
1- api - The api folder allows us to interoperate and consume elements coming from the backend.
2- commons - Contains all the elements common to the application, such as colors, size etc. 
3- langs - Contains all the hard texts of the application.
3- views - contains everything that is visual (screen and component). 
8- main.dart - This is the starting point of the application. 
```

### API


```
api/
|- response.api.dart
|- servicese.api.dart
```

### Commons


```
commons/
|- helpers.dart
|- palettes.dart
|- size.dart
```

### Langs


```
langs/
|- en.lang.dart
```

### Views

```
views/
|- components/
   |- form/
      | - dropdown.dart
      | - pass_field.dart
      | - text_field.dart
   | - button.component.dart
   | - menu.component.dart
   | - nenucb.component.dart
   | - mytext.component.dart
   | - paymentmethod.component.dart
|- screens/
  |- addpayment.screen.dart
  |- home.screen.dart
  |- login.screen.dart
```

### Demo


https://user-images.githubusercontent.com/34966088/221414194-ad86a679-05e3-41bb-ac82-8b15308c5198.mp4

