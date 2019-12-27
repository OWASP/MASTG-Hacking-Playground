# MSTG Hacking Playground

## Project Description

Welcome to the MSTG Playground for Android and iOS. This is a collection of mobile apps, intentionally build insecure. These apps are used as examples to demonstrate different vulnerabilites explained in the the [OWASP Mobile Security Testing Guide](https://github.com/OWASP/owasp-mstg/ "OWASP MSTG"). The current release of the OWASP Mobile Security Testing Guide (MSTG) can be found [here](https://github.com/OWASP/owasp-mstg/releases "MSTG Release").

In order to give practical guidance to developers, security researches and penetration testers, a hacking playground was created that consists of different mobile App’s that contain different vulnerabilities that map to the MSTG test cases. This has two advantages:

- A developer can identify vulnerable code in the provided App’s and can see the implications and risks if such patterns are used and can look for the best practices in the MSTG to mitigate the vulnerabilities.
- Penetration testers / security researchers can identify bad practices, dangerous methods and classes they should look for when assessing a Mobile App and can gain more knowledge through the information provided in the MSTG.

It is also encouraged to use the App(s) for education purpose during trainings and workshops. 

If you want to contribute to the MSTG, please go to the OWASP Slack Channel. You can register here http://owasp.herokuapp.com/ and can find us in the channel #project-mobile_omtg.

You are invited to extend the existing apps or even create your own one. Please ping [Sven Schleier](https://github.com/sushi2k "Sven Schleier") for any questions. 


## Android

### [MSTG Android Java App](https://github.com/OWASP/MSTG-Hacking-Playground/tree/master/Android/MSTG-Android-Java-App "Android Java App") 

- Author: [Sven Schleier](https://github.com/sushi2k "Sven Schleier") 
- Maintained by [Sven Schleier](https://github.com/sushi2k "Sven Schleier")

#### Installation

This app is compatible with Android 4.4 and up.

```
$ adb install Playground/Android/mstg-java-app/app/build/outputs/apk/debug/app-debug.apk  
```


### [MSTG Android Kotlin App](https://github.com/OWASP/MSTG-Hacking-Playground/tree/master/Android/MSTG-Android-Kotlin-App "Android Kotlin App") 

- Author: [Wen Bin Kong](https://github.com/kongwenbin "Wen Bin Kong") 
- Maintained by [Sven Schleier](https://github.com/sushi2k "Sven Schleier")

#### Installation

This app is compatible with Android 4.4 and up.

```
$ adb install Playground/Android/mstg-kotlin-app/app/build/outputs/apk/debug/app-debug.apk  
```


### Android Studio 

Open the project directories mstg-java-app or mstg-kotlin-app in Android Studio. The apps can be compiled with Android Studio 3.1.4 (tested). 
When asked for updating the Gradle Plugin in Android Studio, when opening the projects please don't update Gradle and stay with version 3.1.4.


## iOS

No iOS Apps yet. Feel free to start one :-) 

## Mobile Security Crackmes

Did you enjoy working with the Playground ? There is more! Go to [the MSTG Crackmes](https://github.com/OWASP/MSTG-Hacking-Playground "MSTG-Crackmes") and find out!
Having troubles with getting through the playground challenges, check the Write-ups folder right here!

## Issues with the Crackmes
Currently, the code is being maintained by [@sushi2k](https://github.com/sushi2k "Sven Schleier"). If the app does not boot, or if there is another bug: file an issue at this repository. 




### Android App

The Android App is located in https://github.com/OWASP/MSTG-Hacking-Playground/tree/master/Android/OMTG-Android-App. After cloning the repo this directory needs to be opened in Android Studio. 

In order to get the App running, besides the Android SDK, also the Android NDK needs to be availabe. If the NDK is not available, Android Studio will ask to download or specify a local path for the NDK when the project is opened. If parts of the SDK are missing, a prompt should show up to install the additional requriments. Afterwards the App can be build and can be run in an emulator or mobile device. 

Check the [Wiki](https://github.com/OWASP/MSTG-Hacking-Playground/wiki) for a description of all available test cases.

Screenshot:

![Test cases mapped to MSTG](https://raw.githubusercontent.com/OWASP/MSTG-Hacking-Playground/master/Android/OMTG-Android-App/screenshots/screenshot_0.png "Test cases mapped to MSTG" )



## Mobile Apps

The following Mobile Apps are already created:
* A Android Application is implemented in Java
* A Android Application is implemented in Kotlin


## License

This project is using the GNU General Public License v3.0. 


## Acknowledgements
Wen Bin Kong (@kongwenbin)
Nikhil Soni (@nikhil)
Ryan Teoh (@ryantzj)
