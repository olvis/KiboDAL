/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.intf.IRolDAO;
import bo.com.kibo.entidades.Rol;
import org.hibernate.Query;

/**
 *
 * @author Olvinho
 */
public class RolHibernateDAO extends DAOGenericoHibernate<Rol, Integer> implements IRolDAO {

    @Override
    public boolean checkId(Integer id) {
        Query query = getSession().createQuery("SELECT 1 from Rol r WHERE r.id = :id");
        query.setParameter("id", id);
        return (query.uniqueResult() != null);
    }

    @Override
    public Integer getIdPorDescripcion(String descripcion) {
        Query query = getSession().createQuery("SELECT id from Rol r WHERE r.descripcion = :descripcion");
        query.setParameter("descripcion", descripcion);
        return (Integer) query.uniqueResult();
    }

}
