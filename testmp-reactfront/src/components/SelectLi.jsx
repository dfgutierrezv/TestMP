import React from 'react'


const SelectLi = (prop) => {
    
    const[region,setRegion]=React.useState([]);
    //const urlt=prop.url;

    React.useEffect(()=>{
        obtdat()
    },[])

    const obtdat = async ()=> {
    const data= await fetch(prop.url)
    const regiones = await data.json()
   
    setRegion(regiones);
    }
    
   
    
    return (
        <div>
            <select name="" id=""  defaultValue="0" onChange={prop.handleChange}>
                <option value="0"  disabled >Seleccione {prop.title}</option>
                {
                    region.map(item => (
                        <option id={item.id} value={item.id}>{item.nombre}</option>
                    ))
                }
            </select>
        </div>
    )
}

export default SelectLi
