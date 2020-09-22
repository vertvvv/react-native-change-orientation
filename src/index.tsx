import { NativeModules } from 'react-native';

type ChangeOrientationType = {
  multiply(a: number, b: number): Promise<number>;
  setLandscape(): Promise<void>;
  setPortrait(): Promise<void>;
};

const { ChangeOrientation } = NativeModules;

export default ChangeOrientation as ChangeOrientationType;
