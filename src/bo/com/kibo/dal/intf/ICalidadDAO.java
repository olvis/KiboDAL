/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.intf;

import bo.com.kibo.entidades.Calidad;

/**
 *
 * @author Olvinho
 */
public interface ICalidadDAO extends IDAOGenerico<Calidad, Integer> {

    Integer getIdPorCodigo(String codigo);

    boolean checkId(Integer id);

    String getCodigo(Integer id);
}
