/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bo.com.kibo.dal.intf;

import bo.com.kibo.entidades.Carga;

/**
 *
 * @author Olvinho
 */
public interface ICargaDAO extends IDAOGenerico<Carga, Integer>{

    public Integer getIdPorCodigo(String codigo);

    public boolean checkId(Integer id);
    
}
