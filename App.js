/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow strict-local
 */

import React , {Component} from 'react';
import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  View,
  Text,
  StatusBar,
} from 'react-native';

import {
  Header,
  LearnMoreLinks,
  Colors,
  DebugInstructions,
  ReloadInstructions,
} from 'react-native/Libraries/NewAppScreen';

import CustomListView from './CustomListView';

const ROWS_IN_DATA_SOURCE = 30;
const data = [];
for (let i=0; i<ROWS_IN_DATA_SOURCE; i++) data.push(`This is ios row # ${i+1}`);

const App = ()=> {
  return (
          <View >
            
              <CustomListView  
                  data = {data}
              />
          </View>
        );
    
}
const styles = StyleSheet.create({
    container: {
      flex: 1,
      justifyContent: 'center',
      alignItems: 'center',
      backgroundColor: '#F5FCFC',
    }
});

export default App;
