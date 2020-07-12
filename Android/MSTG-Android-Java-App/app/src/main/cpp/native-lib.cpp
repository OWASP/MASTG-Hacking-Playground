//
// Created by Sven on 12/7/20.
//

#include <jni.h>
#include <string>

// https://developer.android.com/ndk/samples/sample_hellojni

extern "C" JNIEXPORT jstring

JNICALL
Java_sg_vp_owas_mobile_OMTG_Android_OMTG_1DATAST_1001_1SQLite_1Encrypted_stringFromJNI(
        JNIEnv *env,
        jobject /* this */) {
    std::string hello = "S3cr3tString!!!";
    return env->NewStringUTF(hello.c_str());
}extern "C"
JNIEXPORT jstring JNICALL
Java_sg_vp_owasp_1mobile_OMTG_1Android_OMTG_1DATAST_1001_1SQLite_1Encrypted_stringFromJNI(
        JNIEnv *env, jobject thiz) {
    // TODO: implement stringFromJNI()

    std::string hello = "S3cr3tString!!!";
    return env->NewStringUTF(hello.c_str());
}