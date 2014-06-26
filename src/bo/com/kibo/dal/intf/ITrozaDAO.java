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
public interface ITrozaDAO extends IDAOGenerico<Troza, Integer> {

    Integer getIdPorCodigoArea(String codigo, Integer idArea);

    boolean checkNumero(Integer numero);

    List<Troza> getTrozasParaTala(Integer idArea);

    List<Troza> getTrozasParaExtraccion(Integer idArea);

    List<Troza> getTrozasParaMovimiento(Integer idArea);

    String getCodigo(Integer numero);

    List<String> getCodigosTrozaParaTala(Integer idArea, String codigoParcial);
    
    List<String> getCodigosTrozaParaExtraccion(Integer idArea, String codigoParcial);
    
    List<String> getCodigosTrozaParaMovimiento(Integer idArea, String codigoParcial);

}
