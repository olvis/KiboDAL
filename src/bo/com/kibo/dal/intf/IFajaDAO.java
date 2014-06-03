/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bo.com.kibo.dal.intf;

import bo.com.kibo.entidades.Faja;

/**
 *
 * @author Olvinho
 */
public interface IFajaDAO extends IGeoLugarDAO<Faja>{
    /***
     * Busca por Area, Numero y Bloque una faja
     * @param faja La entidad que contiene Area, Numero y Bloque
     * @return Verdadero si ya existe una faja con número y bloque especificado en el área.
     */
    boolean existeFaja(Faja faja);
    
}
