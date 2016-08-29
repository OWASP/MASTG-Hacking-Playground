# OMTG-Hacking-Playground

## Project Description

The OWASP Mobile Testing Guide (OMTG) will be similar to the OWASP Web Application Testing Guide, but will have specific test cases only applicable to mobile platforms. In order to give practical guidance to developers, security researches and penetration testers, a hacking playground was created that consists of different mobile App’s that contain different vulnerabilities that map to the OMTG test cases. Every test case described in the OMTG will therefore be implemented in an Android and iOS App. This has two advantages:

- A developer can identify vulnerable code in the provided App’s and can see the implications and risks if such patterns are used and can look for the best practices in the OMTG to mitigate the vulnerabilities.
- Penetration testers / security researchers can identify bad practices, dangerous methods and classes they should look  rst when assessing a Mobile App and can gain more knowledge through the information provided in the OMTG.

It is also encouraged to use the App(s) for education purpose during trainings and workshops. 

Current Draft of the OWASP Mobile Testing Guide (OMTG) can be found here: https://docs.google.com/document/d/132Ose0jdQwN6Z_Fp0VOJtVdGCufIwligwmf6oT0lmK8/edit#
 
If you do not have access to the OMTG yet, please write a mail to sven@vantagepoint.sg. 

## Installation 

### Android App

The Android App is located in https://github.com/OWASP/OMTG-Hacking-Playground/tree/master/Android/OMTG-Android-App. After cloning the repo this directory needs to be opened in Android Studio. 

In order to get the App running, besides the Android SDK, also the Android NDK needs to be availabe. If the NDK is not available, Android Studio will ask to download or specify a local path for the NDK when the project is opened. If parts of the SDK are missing, a prompt should show up to install the additional requriments. Afterwards the App can be build and can be run in an emulator or mobile device. 

Check the [Wiki](https://github.com/OWASP/OMTG-Hacking-Playground/wiki) for a description of all available test cases.

Screenshot:

![Test cases mapped to OMTG](https://raw.githubusercontent.com/OWASP/OMTG-Hacking-Playground/master/Android/OMTG-Android-App/screenshots/screenshot_0.png "Test cases mapped to OMTG" )



## Mobile Apps

The following Mobile App is already created:
* A fully working Android Application is implemented with around 20 test cases, and will be extended incrementally during the work on the OMTG.
For the future the following enhancements are planned:


## Project Roadmap 

### Short Term (1-3 months)
* Include more test cases into the Android App so all possible test cases are included
* Review the test cases
* A branch of the Android App will be created with Code Obfuscation, by using ProGuard to show developers how to enable code obfuscation and how it looks like once it's activated but it's also a playground to show penetration testers/security researches ways to reverse engineer the code.
* Keep the documentation up-to-date and the link to the OMTG
* Presentation of the OWASP Mobile Testing Guide (status update) and Hacking Playground at Null Security in September 2016 at the Singapore Meetup.

### Long Term (3-12 months)
* Create an iOS App (including one with code obfuscation) that also includes the different test cases of the OWASP Mobile Testing Guide
* Maintain the Android / iOS App in case the OWASP Mobile Testing Guide is getting updated, e.g. new best practices are available or new vulnerabilities are disclosed
    

## Author 

Sven Schleier

Senior Security Consultant

Vantage Point Security 

sven@vantagepoint.sg


## License

This project is using the GNU General Public License v3.0. 


## Acknowledgements

Ryan Teoh (@ryantzj)

