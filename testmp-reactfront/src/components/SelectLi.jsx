import React from 'react'
import { OptionComp } from './OptionComp'



const SelectLi = ({locaciones,title,handleChange,id}) => {
    const [locacion,setLocaciones]= React.useState([]);

    React.useEffect(() => {
        setLocaciones(locaciones);
    }, [locaciones])
    
    return (
        <div>
            <select  id={id}  defaultValue="0" onChange={handleChange}>
                <option value="0"  disabled >Seleccione {title}</option>
                {locacion&&(locacion.map((item) => (
                    <OptionComp locacion={item} key={item.id}/>
                )))}
            </select>
        </div>
    )
}

export default SelectLi
