# react-native-appmonet-library

## Getting started
Clone this repo and look up for `<API_KEY>` and replace it with your api key:
#### Android
- [build.gradle](https://github.com/AppMonet/AppMonet-React-Native-Sample/blob/2875bbe75cd18ce6207cba5fef3c65fdccbc03ee/android/build.gradle#L70)
- Make sure you have the latest [AppMonet Library](https://github.com/AppMonet/AppMonet-React-Native-Sample/blob/91aeeb1a18f06f1c5db5c17dc620edeaa5b5b7d8/android/build.gradle#L79)


#### iOS
[Podfile](https://github.com/AppMonet/AppMonet-React-Native-Sample/blob/2875bbe75cd18ce6207cba5fef3c65fdccbc03ee/example/ios/Podfile#L5) - make sure you add this on your application `Podfile`


### Mostly automatic installation

`$ yarn install`

`$ cd example && yarn install`

#### IOS
`$ cd react-native-app-monet-library/example/ios && pod init`

## Usage
```javascript
import AppMonetLibrary from 'react-native-app-monet-library';

AppMonetLibrary.initialize('APPLICATION_ID');
```


