/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bo.com.kibo.dal.intf;

import bo.com.kibo.entidades.Troza;
import java.util.List;

/**
 *
 * @author Olvinho
 */
public interface ITrozaDAO extends IDAOGenerico<Troza, Integer>{
    
    Integer getIdPorCodigoArea(String codigo, Integer idArea);

    boolean checkNumero(Integer numero);

    public List<Troza> getTrozasParaCorta(Integer idArea);

    String getCodigo(Integer numero);
    
}
