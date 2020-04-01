/**
 * Sample React Native App
 *
 * adapted from App.js generated by the following command:
 *
 * react-native init example
 *
 * https://github.com/facebook/react-native
 */

import React, {Component} from 'react';
import {StyleSheet, Text, View} from 'react-native';
//Import AppMonet Wrapper
import AppMonetLibrary from 'react-native-app-monet-library';

export default class App extends Component {
  componentDidMount() {
    //Initialize method will start the sdk with and application id that you can get from our dashboard.
    AppMonetLibrary.initialize('APPLICATION_ID');
  }
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>☆AppMonetLibrary example☆</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
