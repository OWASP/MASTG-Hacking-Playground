# MSTG Hacking Playground

## Project Description

Welcome to the MSTG Playground. This is a collection of iOS and Android mobile apps, that are intentionally build insecure. These apps are used as examples to demonstrate different vulnerabilities explained in the the [OWASP Mobile Security Testing Guide](https://github.com/OWASP/owasp-mstg/ "OWASP MSTG"). The current release of the OWASP Mobile Security Testing Guide (MSTG) can be found [here](https://github.com/OWASP/owasp-mstg/releases "MSTG Release").

In order to give practical guidance to developers, security researches and penetration testers, a hacking playground was created that consists of different mobile App’s that contain different vulnerabilities that map to the MSTG test cases (there is no full coverage of all test cases, but you are invited to share your apps or extend the existing ones ;-)). This has two advantages:

- A developer can identify vulnerable code in the provided App’s and can see the implications and risks if such patterns are used and can look for the best practices in the MSTG to mitigate the vulnerabilities.
- Penetration testers / security researchers can identify bad practices, dangerous methods and classes they should look for when assessing a Mobile App and can gain more knowledge through the information provided in the MSTG.

It is also encouraged to use the App(s) for education purpose during trainings and workshops.

If you want to contribute to the MSTG, please look [here](https://github.com/OWASP/owasp-mstg/blob/master/CONTRIBUTING.md) or you can talk to us directly in the [OWASP Slack Channel](https://github.com/OWASP/owasp-mstg/#contributions-feature-requests-and-feedback).

You are invited to extend the existing apps or even create your own one. Please ping [Sven](https://github.com/sushi2k "Sven") for any questions.

## Android

### MSTG Android Java App

- Author: [Sven Schleier](https://github.com/sushi2k "Sven Schleier")
- Maintained by [Sven Schleier](https://github.com/sushi2k "Sven Schleier")

The sources can be found here: <https://github.com/OWASP/MSTG-Hacking-Playground/tree/master/Android/MSTG-Android-Java-App>

#### Installation

This app is compatible with Android 4.4 and up. Once you checkout the repo you can install the debug build:

```bash
$ adb install Android/MSTG-Android-Java-App/app/build/outputs/apk/debug/app-debug.apk  
```

The APK is also available in the [release page](https://github.com/OWASP/MSTG-Hacking-Playground/releases/tag/1.0).

Screenshot of app:

![Test cases mapped to MSTG](https://raw.githubusercontent.com/OWASP/MSTG-Hacking-Playground/master/Android/screenshots/android-app-java.png "Test cases mapped to MSTG" )

#### Available Test Cases

Check the [Wiki](https://github.com/OWASP/MSTG-Hacking-Playground/wiki/Android-App) for a description of all available test cases in the `MSTG-Android-Java-App`.

### MSTG Android Kotlin App

- Author: [Wen Bin Kong](https://github.com/kongwenbin "Wen Bin Kong")
- Maintained by [Sven Schleier](https://github.com/sushi2k "Sven Schleier")

The sources can be found here: <https://github.com/OWASP/MSTG-Hacking-Playground/tree/master/Android/MSTG-Android-Kotlin-App>

#### Installation

In order to use the Kotlin App you need to deploy the [Ruby on Rails backend](https://github.com/OWASP/MSTG-Hacking-Playground/tree/master/Serverside/rails-api-original "ror")

This app is compatible with Android 4.4 and up. Once you checkout the repo you can install the debug build:

```bash
$ adb install Android/MSTG-Android-Kotlin-App/app/build/outputs/apk/debug/app-debug.apk
```

The APK is also available in the [release page](https://github.com/OWASP/MSTG-Hacking-Playground/releases/tag/1.0).

### Android Studio

Open the project directories `Android/MSTG-Android-Kotlin-App/` or `Android/MSTG-Android-Java-App/` in Android Studio. The apps can be compiled with Android Studio 3.5 (tested).

In order to get the `MSTG-Android-Java-App` running, besides the Android SDK, also the Android NDK needs to be available. If the NDK is not available, Android Studio will ask to download or specify a local path for the NDK when the project is opened. If parts of the SDK are missing, a prompt should show up to install the additional requirements. Afterwards the App can be build and can be run in an emulator or mobile device.

## iOS

### MSTG iOS Swift App

- Author: [Sven Schleier](https://github.com/sushi2k "Sven Schleier")
- Maintained by [Sven Schleier](https://github.com/sushi2k "Sven Schleier")

The sources can be found here: <https://github.com/OWASP/MSTG-Hacking-Playground/tree/master/iOS/MSTG-JWT>

#### Installation

In order to use the iOS App you need to deploy the [Ruby on Rails backend](https://github.com/OWASP/MSTG-Hacking-Playground/tree/master/Serverside/rails-api-original "ror")

The IPA is also available in the [release page](https://github.com/OWASP/MSTG-Hacking-Playground/releases/tag/1.0).

There are several ways available on how to install an IPA; [have a look at the MSTG](https://mobile-security.gitbook.io/mobile-security-testing-guide/ios-testing-guide/0x06b-basic-security-testing#installing-apps) to identify which one is the best for you.

## Issues with the Hacking Playground

Currently, the code is being maintained by [@sushi2k](https://github.com/sushi2k "Sven Schleier"). If the app does not boot, or if there is another bug: [file an issue](https://github.com/OWASP/MSTG-Hacking-Playground/issues) at this repository.

## Mobile Security Crackmes

Did you enjoy the Playground? There is more:

Go to [the MSTG Crackmes](https://github.com/OWASP/owasp-mstg/tree/master/Crackmes "MSTG-Crackmes") and find out!

There are also various solutions available for the Crackmes, that can guide you through the reverse engineering process.

## License

This project is using the GNU General Public License v3.0.

## Acknowledgements

Wen Bin Kong (@kongwenbin)
Nikhil Soni (@nikhil)
Ryan Teoh (@ryantzj)
