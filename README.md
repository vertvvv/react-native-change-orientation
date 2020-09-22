# react-native-change-orientation

React native package that helps change device orientation programatically

## Installation

```sh
yarn add react-native-change-orientation
```

## Usage

```js
import ChangeOrientation from 'react-native-change-orientation';

ChangeOrientation.setPortrait();
// or
ChangeOrientation.setLandscape();
```

Currently works only on iOS (`react-native-navigation` supports orientation change on Android)

## License

MIT
