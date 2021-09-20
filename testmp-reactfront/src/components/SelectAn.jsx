import React, { Fragment, useState } from 'react'
import SelectLi from './SelectLi'

const SelectAn = ({locacion}) => {
    
    const [region,setRegion]= useState([]);
    const [provincia,setProvincia]= useState(null);
    const [ciudad, setCiudad] = useState(null);
    const [calles, setCalles] = useState([]);


    const locaciondata = async (url)=> {
    const data= await fetch(url)
    const locaciones = await data.json()
   
    return locaciones
    }

    React.useEffect(() => {
        setRegion(locacion)
       
    }, [locacion])

    const handleChangeRegion = async(e) =>{
        //setRegion(e.target.value)
        const xprovincia = await locaciondata("http://localhost:8000/api/provincias/"+e.target.value)
        
        setProvincia(xprovincia)
        document.getElementById('selpro').getElementsByTagName('option')[0].selected = 'selected'
        document.getElementById('selciu').getElementsByTagName('option')[0].selected = 'selected'
        setCalles([])
    }
    const handleChangeProvincia = async(e) =>{
        //setProvincia(e.target.value)
        const xciudad= await locaciondata("http://localhost:8000/api/ciudades/"+e.target.value)
        setCiudad(xciudad)
        document.getElementById('selciu').getElementsByTagName('option')[0].selected = 'selected'
        setCalles([])
    }
    const handleChangeCiudad = async(e) =>{
        //setCiudad(e.target.value)
        const xcalle = await locaciondata("http://localhost:8000/api/calles/"+e.target.value)
        setCalles(xcalle)
    }

    return (
        <Fragment>
             
            <SelectLi locaciones={region} id="selreg" key="1" title="region"  handleChange={(e)=>handleChangeRegion(e)}/>

            
                
            <SelectLi locaciones={provincia} id="selpro" key="2" title="provincia"  handleChange={(e)=>handleChangeProvincia(e)}/>
            

            
            <SelectLi locaciones={ciudad} id="selciu" key="3" title="ciudad"  handleChange={(e)=>handleChangeCiudad(e)}/>
        
            
                <table>
                <thead>
                    <tr>
                    
                    <th>Calles</th>
                    </tr></thead>
                    <tbody>
                    {ciudad &&(calles.map(item => (
                    <tr key={item.id}>
                    <td>{item.nombre}</td>
                    
                    </tr>
                    ))
                    )}
                    </tbody>
                </table>
            

        </Fragment>
    )
}

export default SelectAn
