import { NativeModules } from 'react-native';

type ChangeOrientationType = {
  multiply(a: number, b: number): Promise<number>;
};

const { ChangeOrientation } = NativeModules;

export default ChangeOrientation as ChangeOrientationType;
