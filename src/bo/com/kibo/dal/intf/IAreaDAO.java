/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bo.com.kibo.dal.intf;

import bo.com.kibo.entidades.Area;

/**
 *
 * @author Olvinho
 */
public interface IAreaDAO extends IGeoLugarDAO<Area>{
    
    /***
     * Devuelve el Id del área buscando por su código.
     * @param codigo
     * @return El Id si el área existe, Nulo si no existe.
     */
    Integer getIdPorCodigo(String codigo);
    
    /***
     * Comprueba si el Id especificado existe en la base
     * @param id El Id que se quiere comprobar
     * @return Verdadero si el Id existe, Falso en otros casos.
     */
    boolean checkId(Integer id);
    
    
    /***
     * Devuelve el código según el Id del Área
     * @param id
     * @return 
     */
    String getCodigo(Integer id);
    
    /**
     * Devuelve el area por el codigo
     * @param codigo
     * @return 
     */
    Area recuperarPorCodigo(String codigo);
    
}
