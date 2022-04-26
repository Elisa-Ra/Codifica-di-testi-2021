import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View, TouchableHighlight, Linking, Image } from 'react-native';
import {
  responsiveHeight,
  responsiveWidth,
  responsiveFontSize,
  responsiveScreenHeight,
  responsiveScreenWidth,
  responsiveScreenFontSize
} from "react-native-responsive-dimensions";

export default function App() {
  const home=()=>{Linking.openURL('https://ristostore.it/')}
  const gestori=()=>{Linking.openURL('https://ristostore.it/Area_Gestori/accesso')}
  const driver=()=>{Linking.openURL('https://ristostore.it/Area_Drivers/accesso')}
  
  return (
    <View style={styles.container}>
      
        <Text style={styles.text1}>Ristostore</Text>
        <View style={styles.div}>
          <TouchableHighlight onPress={home}>
            
            <Image source={require('./assets/entra.jpg')}  style={styles.home}/>
            
          </TouchableHighlight>
          <Text style={styles.text}>Prova la nostra app</Text>
        </View>
       
        <View style={styles.div}>
          <TouchableHighlight onPress={driver}>
          <Image source={require('./assets/riders.jpg')}  style={styles.riders}/>
         
          </TouchableHighlight> 
          <Text style={styles.text}>Area Driver</Text>
        </View>
        <View style={styles.div}>
          <TouchableHighlight onPress={gestori}>
          <Image source={require('./assets/gestori.jpg')}  style={styles.gestori}/>
         
          </TouchableHighlight> 
          <Text style={styles.text}>Area Gestori</Text>
        </View>
      


      <StatusBar style="auto" />
    </View>
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
    margin:'10%',
    
    
  },
  home:{
    resizeMode: 'cover',
    width: '100%',
    height: '90%'

  }, 
  gestori:{
    resizeMode: 'cover',
    width: '100%',
    height: '90%'

  },
  riders:{
    resizeMode: 'cover',
    width: '100%',
    height: '90%'

  },
  text:{
    textAlign:'center',
    color:'#008b8b',
    
    fontSize:20
  },
  text1:{
    textAlign:'center',
    color:'#008b8b',
    margin:'5%',
    fontSize:30
  }

});
