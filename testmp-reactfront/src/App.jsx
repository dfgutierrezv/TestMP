import React, { useState, useEffect } from "react";
import "./App.css";
import SelectAn from "./components/SelectAn";



export function App() {
    const [locaciones, setLocacion] = useState(null);
    
    const locacionData = async () => {
        const data= await fetch("http://localhost:8000/api/regiones")
        const xlocaciones = await data.json()
    
        setLocacion(xlocaciones)
        
       
    }

    useEffect(()=>{
        
        locacionData();
    },[]);

    

    
    
        return (
            <div className="App">
                
                <SelectAn locacion={locaciones}/>
            </div>
            

        );
    
}

