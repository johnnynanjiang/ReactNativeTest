var React = require('react-native');

var {
  Text,
  View
} = React;

var styles = React.StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: 'red'
  }
});

class SimpleApp extends React.Component {
  componentWillMount: function () {
    console.log("componentWillMount");
    this.props["key1"] += " updated by React Native"
  },

  render() {
    console.log("render");
    return <View style={styles.container}>
        <Text>This is a simple application.</Text>
      </View>;
  }
}

React.AppRegistry.registerComponent('SimpleApp', () => SimpleApp);
console.log("registerComponent");
