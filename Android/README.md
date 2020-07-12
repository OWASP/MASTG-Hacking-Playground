# MSTG Hacking Playground

## Android

### [MSTG Android Java App](https://github.com/OWASP/MSTG-Hacking-Playground/tree/master/Android/MSTG-Android-Java-App "Android Java App")

- Author: [Sven Schleier](https://github.com/sushi2k "Sven Schleier")
- Maintained by [Sven Schleier](https://github.com/sushi2k "Sven Schleier")

#### Installation Java App

This app is compatible with Android 4.4 and up.

```shell
$ adb install Playground/Android/mstg-java-app/app/build/outputs/apk/debug/app-debug.apk  
```

### [MSTG Android Kotlin App](https://github.com/OWASP/MSTG-Hacking-Playground/tree/master/Android/MSTG-Android-Kotlin-App "Android Kotlin App")

- Author: [Wen Bin Kong](https://github.com/kongwenbin "Wen Bin Kong")
- Maintained by [Sven Schleier](https://github.com/sushi2k "Sven Schleier")

### Android App

The Android App is located in <https://github.com/OWASP/MSTG-Hacking-Playground/tree/master/Android/OMTG-Android-App>. After cloning the repo this directory needs to be opened in Android Studio.

In order to get the App running, besides the Android SDK, also the Android NDK needs to be availabe. If the NDK is not available, Android Studio will ask to download or specify a local path for the NDK when the project is opened. If parts of the SDK are missing, a prompt should show up to install the additional requriments. Afterwards the App can be build and can be run in an emulator or mobile device.

Check the [Wiki](https://github.com/OWASP/MSTG-Hacking-Playground/wiki) for a description of all available test cases.

Screenshot:

![Test cases mapped to MSTG](https://raw.githubusercontent.com/OWASP/MSTG-Hacking-Playground/master/Android/screenshots/android-app-java.png "Test cases mapped to MSTG" )

#### Installation Kotlin App

This app is compatible with Android 4.4 and up.

```shell
$ adb install Playground/Android/mstg-kotlin-app/app/build/outputs/apk/debug/app-debug.apk  
```

#### Android Studio

Open the project directories `mstg-java-app` or `mstg-kotlin-app` in Android Studio. The apps can be compiled with Android Studio 3.1.4 (tested).

When asked for updating the Gradle Plugin in Android Studio, when opening the projects please don't update Gradle and stay with version 3.1.4.

## Mobile Apps

The following Mobile Apps are already created:

- A Android Application is implemented in Java
- A Android Application is implemented in Kotlin

## License

This project is using the GNU General Public License v3.0.

## Acknowledgements

- Wen Bin Kong (@kongwenbin)
- Nikhil Soni (@nikhil)
- Ryan Teoh (@ryantzj)
