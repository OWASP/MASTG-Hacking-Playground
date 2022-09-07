# MASTG Hacking Playground

Welcome to the MASTG Hacking Playground which is part of the [OWASP Mobile Application Security (MAS) project](https://mas.owasp.org/).

The MASTG Hacking Playground is a collection of educational iOS and Android mobile apps, that are intentionally build insecure in order to give practical guidance to developers, security researches and penetration testers.

The vulnerabilities used in these apps come from the [OWASP Mobile Application Security Testing Guide (MASTG)](https://github.com/OWASP/owasp-mastg/releases) (there is no full coverage of all test cases, but you are invited to extend the current coverage).

- A developer can identify vulnerable code in the provided apps and can see the implications and risks if such patterns are used and can look for the best practices in the MASTG to mitigate the vulnerabilities.
- Penetration testers / security researchers can identify bad practices, dangerous methods and classes they should look for when assessing a mobile app and can gain more knowledge through the information provided in the MASTG.
- It is also encouraged to use these apps for education purpose during trainings and workshops.

If you want to contribute, please [contact us](https://mas.owasp.org/#connect-with-us). For instance, you could:

- Extend MASTG test case coverage
- Improve the user / hacker experience
- Bug-fix them
- Propose new ideas
- etc.

> NOTE: The OWASP MAS project also includes [the MASTG Crackmes](https://github.com/OWASP/owasp-mastg/tree/master/Crackmes "MASTG-Crackmes") which include various solutions that can guide you through the reverse engineering process and help you learn and practice.

_Currently, the code is being maintained by [@sushi2k](https://github.com/sushi2k "Sven Schleier"). If the app does not boot, or if there is another bug: [file an issue](https://github.com/OWASP/MASTG-Hacking-Playground/issues) at this repository._

## Android

### MASTG Android Java App

- Author: [Sven Schleier](https://github.com/sushi2k "Sven Schleier")
- Maintained by [Sven Schleier](https://github.com/sushi2k "Sven Schleier")

The sources can be found here: <https://github.com/OWASP/MASTG-Hacking-Playground/tree/master/Android/MSTG-Android-Java-App>

#### Installation

This app is compatible with Android 4.4 and up. Once you checkout the repo you can install the debug build:

```bash
$ adb install Android/MSTG-Android-Java-App/app/build/outputs/apk/debug/app-debug.apk  
```

The APK is also available in the [release page](https://github.com/OWASP/MASTG-Hacking-Playground/releases/tag/1.0).

Screenshot of app:

![Test cases mapped to MASTG](https://raw.githubusercontent.com/OWASP/MASTG-Hacking-Playground/master/Android/screenshots/android-app-java.png "Test cases mapped to MASTG" )

#### Available Test Cases

Check the [Wiki](https://github.com/OWASP/MASTG-Hacking-Playground/wiki/Android-App) for a description of all available test cases in the `MSTG-Android-Java-App`.

### MASTG Android Kotlin App

- Author: [Wen Bin Kong](https://github.com/kongwenbin "Wen Bin Kong")
- Maintained by [Sven Schleier](https://github.com/sushi2k "Sven Schleier")

The sources can be found here: <https://github.com/OWASP/MASTG-Hacking-Playground/tree/master/Android/MSTG-Android-Kotlin-App>

#### Installation

In order to use the Kotlin App you need to deploy the [Ruby on Rails backend](https://github.com/OWASP/MASTG-Hacking-Playground/tree/master/Serverside/rails-api-original "ror")

This app is compatible with Android 4.4 and up. Once you checkout the repo you can install the debug build:

```bash
$ adb install Android/MSTG-Android-Kotlin-App/app/build/outputs/apk/debug/app-debug.apk
```

The APK is also available in the [release page](https://github.com/OWASP/MASTG-Hacking-Playground/releases/tag/1.0).

### Android Studio

Open the project directories `Android/MSTG-Android-Kotlin-App/` or `Android/MSTG-Android-Java-App/` in Android Studio. The apps can be compiled with Android Studio 3.5 (tested).

In order to get the `MSTG-Android-Java-App` running, besides the Android SDK, also the Android NDK needs to be available. If the NDK is not available, Android Studio will ask to download or specify a local path for the NDK when the project is opened. If parts of the SDK are missing, a prompt should show up to install the additional requirements. Afterwards the App can be build and can be run in an emulator or mobile device.

## iOS

### MASTG iOS Swift App

- Author: [Sven Schleier](https://github.com/sushi2k "Sven Schleier")
- Maintained by [Sven Schleier](https://github.com/sushi2k "Sven Schleier")

The sources can be found here: <https://github.com/OWASP/MASTG-Hacking-Playground/tree/master/iOS/MSTG-JWT>

#### Installation

In order to use the iOS App you need to deploy the [Ruby on Rails backend](https://github.com/OWASP/MASTG-Hacking-Playground/tree/master/Serverside/rails-api-original "ror")

The IPA is also available in the [release page](https://github.com/OWASP/MASTG-Hacking-Playground/releases/tag/1.0).

There are several ways available on how to install an IPA; [have a look at the MASTG](https://mas.owasp.org/MASTG/iOS/0x06b-Basic-Security-Testing/#installing-apps) to identify which one is the best for you.

## License

This project is using the GNU General Public License v3.0.

## Acknowledgements

Wen Bin Kong (@kongwenbin)
Nikhil Soni (@nikhil)
Ryan Teoh (@ryantzj)
