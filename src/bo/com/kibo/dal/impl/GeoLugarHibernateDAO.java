/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.intf.IGeoLugarDAO;
import bo.com.kibo.entidades.GeoLugar;
import bo.com.kibo.entidades.PuntoXY;
import java.util.List;
import org.hibernate.Query;

/**
 *
 * @author Olvinho
 * @param <T> Clase entidad
 */
public abstract class GeoLugarHibernateDAO<T extends GeoLugar> extends DAOGenericoHibernate<T, Integer> implements IGeoLugarDAO<T>{

    @Override
    public List<PuntoXY> getPoligono(Integer idLugar) {
        Query query = getSession().createSQLQuery("");
        
        return query.list();
    }
}
