/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.intf;

import bo.com.kibo.entidades.Rol;

/**
 *
 * @author Olvinho
 */
public interface IRolDAO extends IDAOGenerico<Rol, Integer> {

    boolean checkId(Integer id);

    Integer getIdPorDescripcion(String descripcion);

}
