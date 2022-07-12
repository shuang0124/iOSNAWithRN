/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React from 'react';
import type {Node} from 'react';

import {
  AppRegistry,
  Platform,
  StyleSheet,
  Text,
  View,
  Touchableopacity
} from 'react-native';
//导入
var cat = require('react-native').NativeModules.CreatCat;


class NACat extends React.Component  {
//方法执行，
  show(){
    // alert("aa")
     cat.cratCat('机器猫', '男', 2);
     cat.addEvent("血雨声","zaijia")
    cat.whoName("xieyusheng",12,"官渡")
      
      this.ok()
  }
    
    ok(){
        cat.findEventsPromise()
          .then((responseJson) => {
            alert(responseJson)
          })
          .catch((error) => {
            console.error(error);
          });
      }

    
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome} onPress={()=>this.show()}>
          Welcome to React Native!
        </Text>
        <Text style={styles.instructions}>
          To get started, edit page3.js
        </Text>


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


AppRegistry.registerComponent('page3', () => NACat);
