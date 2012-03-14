#!/bin/bash

xcodebuild -project Frank.xcodeproj -sdk /Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS5.0.sdk/ -target Frank -configuration Debug clean
xcodebuild -project Frank.xcodeproj -sdk /Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator5.0.sdk/ -target Frank -configuration Debug clean

xcodebuild -project Frank.xcodeproj -sdk /Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS5.0.sdk/ -target Frank -configuration Debug
xcodebuild -project Frank.xcodeproj -sdk /Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator5.0.sdk/ -target Frank -configuration Debug

lipo -create "build/Debug-iphoneos/libFrank.a" "build/Debug-iphonesimulator/libFrank.a" -output "build/libFrank.a"