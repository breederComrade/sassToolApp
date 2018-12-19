/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React from 'react';
import { Platform, StyleSheet, Text, View } from 'react-native';
import { createStackNavigator, createBottomTabNavigator, createAppContainer } from 'react-navigation';

// 导入页面
import My from './pages/My';
import Home from './pages/Home';
import Login from './pages/Login';

// 创建一个tab导航
const mainTabNav = createBottomTabNavigator({
	Home: {
		screen: Home
	},
	My: {
		screen: My
	}
});

/* 
const RootStack = createStackNavigator(
  {
    Home: {
      screen: HomeScreen,
    },
    Details: {
      screen: DetailsScreen,
    },
  },
  {
    initialRouteName: 'Home',
  }
);


*/
// // 创建一个stack导航
const RootStack = createStackNavigator(
	{
		// // mainTabNav: {
		// // 	screen: mainTabNav
		// // },
		// Home: {
		// 	screen: Home
		// }
		// // Login: {
		// // 	screen: Login
		// // }
	},
	{
		// initialRouteName: 'Home'
	}
);

// 创建app
const AppNav = createAppContainer(RootStack);

export default class App extends React.Component {
	render() {
		return <AppNav />;
	}
}

const styles = StyleSheet.create({
	container: {
		flex: 1,
		justifyContent: 'center',
		alignItems: 'center',
		backgroundColor: '#F5FCFF'
	}
});
