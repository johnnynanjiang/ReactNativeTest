# EmbededReactNativeExample

See [tutorial](http://blog-en.leapoahead.com/post/use-react-native-in-existing-ios-app).

Follow the steps below:

1. brew update
2. brew install node
3. npm install react-native-cli
4. react-native init test
5. edit Podfile

pod 'React', :path => '../node_modules/react-native', :subspecs => [
  'Core',
  'RCTImage',
  'RCTNetwork',
  'RCTText',
  'RCTWebSocket',
  # Add any other subspecs you want to use in your project
]

6. copy npm_modules from test project to ..
7. pod install
8. edit scheme in Xcode if the app is not running on simulator
9. run . start.sh to start the node server