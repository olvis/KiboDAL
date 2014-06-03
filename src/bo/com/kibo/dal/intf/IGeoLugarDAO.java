/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bo.com.kibo.dal.intf;

import bo.com.kibo.entidades.GeoLugar;
import bo.com.kibo.entidades.PuntoXY;
import java.util.List;

/**
 *
 * @author Olvinho
 * @param <T>Clase entidad
 */
public interface IGeoLugarDAO<T extends GeoLugar> extends IDAOGenerico<T, Integer>{
    List<PuntoXY> getPoligono(Integer idLugar);
}
