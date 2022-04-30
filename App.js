import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, TouchableHighlight, Linking, Image } from 'react-native';
import { WebView } from 'react-native-webview';
import * as React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import 'react-native-gesture-handler';
import { TouchableWithoutFeedback } from 'react-native-gesture-handler';


const Stack = createStackNavigator();

function ScreenA({navigation}){ //pagina iniziale
  const screenb= () => {
    navigation.navigate('Ristostore');
  }
  const screenc= () => {
    navigation.navigate('Area Drivers');
  }
  const screend= () => {
    navigation.navigate('Area Gestori');
  }
    return (
      <View style={styles.container}>
    
        
        <View style={styles.div}>
          <TouchableWithoutFeedback onPress={screenb}>
            <Image source={require('./assets/entra.jpg')}  style={styles.img}/>
         </TouchableWithoutFeedback>
         
        </View>
     <Text style={styles.text}>Prova la nostra app</Text>
        <View style={styles.div}>
          <TouchableWithoutFeedback onPress={screenc}>
            <Image source={require('./assets/rider.jpg')}  style={styles.img}/>
          </TouchableWithoutFeedback> 
          
        </View>
        <Text style={styles.text}>Area Driver</Text>
        <View style={styles.div}>
          <TouchableWithoutFeedback onPress={screend}>
            <Image source={require('./assets/gestori.jpg')}  style={styles.img}/>
          </TouchableWithoutFeedback> 
         
        </View>
     <Text style={styles.text}>Area Gestori</Text>
        <StatusBar style="auto" />
      </View>
);
}
function ScreenB(){ //ristostore home
  return (
   
      <WebView name='1'
        source={{ uri: 'https://ristostore.it/' }} 
      />
  
  );
}
function ScreenC(){ //ristostore driver
  return (
    
      <WebView name='2'
        source={{ uri: 'https://ristostore.it/Area_Drivers/accesso' }} 
      />
   
  );
}
function ScreenD(){ //ristostore gestori
  return (
    
      <WebView name='3'
        source={{ uri: 'https://ristostore.it/Area_Gestori/accesso' }} 
      />
    
  );
}

export default function App() {
    return (
      <NavigationContainer>
        <Stack.Navigator>
          <Stack.Screen name="Ristostore App" component = {ScreenA}/>
          <Stack.Screen name="Ristostore" component = {ScreenB} />
          <Stack.Screen name="Area Drivers" component = {ScreenC}/>
          <Stack.Screen name="Area Gestori" component = {ScreenD}/>
        </Stack.Navigator>
      </NavigationContainer>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  div:{
    flex:1,
    width:'100%',
    height:'100%',
  },
  img:{
    resizeMode: 'contain',
    width: '100%',
    height: '100%',
    
  }, 
  text:{
    textAlign:'center',
    color:'#17a2b8',
    fontFamily:'serif',
    fontSize:20
  },
  text1:{
    textAlign:'center',
    color:'#17a2b8',
    fontSize:20,
    fontFamily:'serif'
  }

});

