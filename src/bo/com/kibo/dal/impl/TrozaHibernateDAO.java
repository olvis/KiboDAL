/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.intf.ITrozaDAO;
import bo.com.kibo.entidades.Troza;
import org.hibernate.Query;

/**
 *
 * @author Olvinho
 */
public class TrozaHibernateDAO extends DAOGenericoHibernate<Troza, Integer> implements ITrozaDAO {

    @Override
    public Integer getIdPorCodigoArea(String codigo, Integer idArea) {
        Query query = getSession().createQuery("Select id From Troza t Where t.codigo = :codigo AND t.area.id = :idArea");
        query.setParameter("idArea", idArea);
        query.setParameter("codigo", codigo);
        return (Integer) query.uniqueResult();
    }

}
