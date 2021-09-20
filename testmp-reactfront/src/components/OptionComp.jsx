import React from 'react'

export function OptionComp({locacion}) {
    const {id,nombre} = locacion;
    return (
        <option value={id}> {nombre}</option>
        /**{
            locacion.map(item => (
                <option id={item.id} value={item.id}>{item.nombre}</option>
            ))
        }**/
    )
}
