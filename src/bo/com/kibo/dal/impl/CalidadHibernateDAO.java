/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.intf.ICalidadDAO;
import bo.com.kibo.entidades.Calidad;
import org.hibernate.Query;

/**
 *
 * @author Olvinho
 */
public class CalidadHibernateDAO extends DAOGenericoHibernate<Calidad, Integer> implements ICalidadDAO {

    @Override
    public Integer getIdPorCodigo(String codigo) {
        Query query = getSession().createQuery("SELECT id from Calidad c WHERE c.codigo = :codigo");
        query.setParameter("codigo", codigo);
        return (Integer) query.uniqueResult();
    }

    @Override
    public boolean checkId(Integer id) {
        Query query = getSession().createQuery("SELECT 1 from Calidad c WHERE c.id = :id");
        query.setParameter("id", id);
        return (query.uniqueResult() != null);
    }

    @Override
    public String getCodigo(Integer id) {
        Query query = getSession().createQuery("SELECT codigo from Calidad c WHERE c.id = :id");
        query.setParameter("id", id);
        return (String) query.uniqueResult();
    }

}
