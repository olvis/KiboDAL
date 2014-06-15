/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.intf;

import bo.com.kibo.entidades.Patio;
import java.util.List;

/**
 *
 * @author Olvinho
 */
public interface IPatioDAO
        extends IGeoLugarDAO<Patio> {

    Integer getIdPorNombre(String descripcion);

    boolean checkId(Integer id);

    String getNombre(Integer id);

    List<Patio> obtenerPatiosSegunArea(Integer idArea);

    Integer getIdPatioPorNombre(String descripcion, Integer idArea);
}
