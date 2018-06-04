# MSTG-Hacking-Playground

## Project Description

The OWASP Mobile Security Testing Guide (MSTG) will be similar to the OWASP Web Application Testing Guide, but will have specific test cases only applicable to mobile platforms. In order to give practical guidance to developers, security researches and penetration testers, a hacking playground was created that consists of different mobile App’s that contain different vulnerabilities that map to the MSTG test cases. Every test case described in the MSTG will therefore be implemented in an Android and iOS App. This has two advantages:

- A developer can identify vulnerable code in the provided App’s and can see the implications and risks if such patterns are used and can look for the best practices in the MSTG to mitigate the vulnerabilities.
- Penetration testers / security researchers can identify bad practices, dangerous methods and classes they should look for when assessing a Mobile App and can gain more knowledge through the information provided in the MSTG.

It is also encouraged to use the App(s) for education purpose during trainings and workshops. 

Current Draft of the OWASP Mobile Security Testing Guide (MSTG) can be found here https://github.com/OWASP/owasp-mstg/.

If you want to contribute to the MSTG, please go to the OWASP Slack Channel. You can register here http://owasp.herokuapp.com/ and can find us in the channel #project-mobile_omtg.

## Android App build (APK)

APK files of the Android App can be found in the following path: Android/MSTG-Android-App/app/
https://github.com/OWASP/MSTG-Hacking-Playground/tree/master/Android/OMTG-Android-App/app

There are builds for x86 and arm at the moment. 


## Installation 

### Android App

The Android App is located in https://github.com/OWASP/MSTG-Hacking-Playground/tree/master/Android/OMTG-Android-App. After cloning the repo this directory needs to be opened in Android Studio. 

In order to get the App running, besides the Android SDK, also the Android NDK needs to be availabe. If the NDK is not available, Android Studio will ask to download or specify a local path for the NDK when the project is opened. If parts of the SDK are missing, a prompt should show up to install the additional requriments. Afterwards the App can be build and can be run in an emulator or mobile device. 

Check the [Wiki](https://github.com/OWASP/MSTG-Hacking-Playground/wiki) for a description of all available test cases.

Screenshot:

![Test cases mapped to MSTG](https://raw.githubusercontent.com/OWASP/MSTG-Hacking-Playground/master/Android/OMTG-Android-App/screenshots/screenshot_0.png "Test cases mapped to MSTG" )



## Mobile Apps

The following Mobile App is already created:
* A fully working Android Application is implemented with around 20 test cases, and will be extended incrementally during the work on the MSTG.
For the future the following enhancements are planned:

## Project Roadmap 

### Short Term 
* Include more test cases into the Android App so all possible test cases are included
* Review the test cases
* A branch of the Android App will be created with Code Obfuscation, by using ProGuard to show developers how to enable code obfuscation and how it looks like once it's activated but it's also a playground to show penetration testers/security researches ways to reverse engineer the code.
* Keep the documentation up-to-date and the link to the MSTG 

### Long Term 
* Create an iOS App that also includes the different test cases of the OWASP Mobile Testing Guide.
* Maintain the Android / iOS App in case the OWASP Mobile Testing Guide is getting updated, e.g. new best practices are available or new vulnerabilities are disclosed.
* Presentation of the OWASP Mobile Testing Guide (status update) and Hacking Playground at Security Conferencees/Meetups.
    

## Author 

Sven Schleier

Senior Security Consultant

Vantage Point Security 

sven@vantagepoint.sg


## License

This project is using the GNU General Public License v3.0. 


## Acknowledgements

Nikhil Soni (@nikhil)
Ryan Teoh (@ryantzj)

