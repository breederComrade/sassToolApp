/** @format */

import { AppRegistry, YellowBox } from 'react-native';
import App from './app/index';
import { name as appName } from './app.json';

YellowBox.ignoreWarnings(['Require cycle:', 'Warning: Expected instance props to match']);

AppRegistry.registerComponent(appName, () => App);
