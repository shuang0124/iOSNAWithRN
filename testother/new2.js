
import React from 'react';
import type {Node} from 'react';

import {
  AppRegistry,
  SafeAreaView,
  ScrollView,
  StatusBar,
  StyleSheet,
  Text,
  Button,
  useColorScheme,
  View,
} from 'react-native';



class TodayAttenScreen extends React.Component {
    render(){
  return (

          <View style={styles.container}>
          <Button title='测试button' color='red' onPress={()=>{
              alert('ok 哈哈')

              // 测试跳转新页面
              //this.props.navigation.navigate('todayAttenScreen')
          }} />
        </View>
  );
}
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF'
  },
  highScoresTitle: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10
  },
  scores: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5
  }
});

// Module name
AppRegistry.registerComponent('page2', () => TodayAttenScreen);
