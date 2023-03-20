import { Canvas } from '@react-three/fiber'
import './App.css'

function MainScene (){

  return (
    <Canvas>
      <boxGeometry args={[1,1,1]} />
      <meshStandardMaterial color="orange" />
    </Canvas>
  )
}


function App() {

  return (
    <div className="App">
      <MainScene/>
    </div>
  )
}

export default App
