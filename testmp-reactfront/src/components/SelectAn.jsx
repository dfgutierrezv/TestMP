import React, { Fragment, useState } from 'react'
import SelectLi from './SelectLi'
import axios from 'axios';

const SelectAn = () => {
    const [region,setRegion]= useState("");
    const [provincia,setProvincia]= useState("");
    const [ciudad, setCiudad] = useState("");
    const [urlprovincia, setUrlprovincia] = useState("");
    const [urlciudad, setUrlciudad] = useState("");
    const [calles, setCalles] = useState([]);

   

    const calledata = async (url)=> {
    const data= await fetch(url)
    const xcalles = await data.json()
   
    setCalles(xcalles);
    console.log(calles);
    console.log(xcalles);
    }

    const handleChangeRegion = (e) =>{
        setRegion(e.target.value)
        setUrlprovincia("http://localhost:8000/api/provincias/"+e.target.value) 
    }
    const handleChangeProvincia = (e) =>{
        setProvincia(e.target.value)
        setUrlciudad("http://localhost:8000/api/ciudades/"+e.target.value) 
    }
    const handleChangeCiudad = (e) =>{
        setCiudad(e.target.value)
        calledata("http://localhost:8000/api/calles/"+e.target.value)
    }

    return (
        <Fragment>
            <SelectLi id="selregion" title="region" url="http://localhost:8000/api/regiones" handleChange={(e)=>handleChangeRegion(e)}/>

            {region &&(
            <SelectLi id="selprovincia" title="provincia" url={urlprovincia} handleChange={(e)=>handleChangeProvincia(e)}/>
            )}

            {provincia &&(
            <SelectLi id="selciudad" title="ciudad" url={urlciudad} handleChange={(e)=>handleChangeCiudad(e)}/>
            )}
            
                <table>
                    <tr>
                    <th>Calles</th>
                    </tr>

                    {ciudad &&(calles.map(item => (
                    <tr>
                    <td>{item.nombre}</td>
                    
                    </tr>
                    ))
                    )}
                </table>
            

        </Fragment>
    )
}

export default SelectAn
