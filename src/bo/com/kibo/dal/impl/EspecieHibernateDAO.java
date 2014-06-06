/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.intf.IEspecieDAO;
import bo.com.kibo.entidades.Especie;
import org.hibernate.Query;

/**
 *
 * @author Olvinho
 */
public class EspecieHibernateDAO extends DAOGenericoHibernate<Especie, Integer> implements IEspecieDAO {

    @Override
    public Integer getIdPorNombre(String nombre) {
        Query query = getSession().createQuery("SELECT id from Especie e WHERE e.nombre = :nombre");
        query.setParameter("nombre", nombre);
        return (Integer) query.uniqueResult();
    }

    @Override
    public boolean checkId(Integer id) {
        Query query = getSession().createQuery("SELECT 1 from Especie e WHERE e.id = :id");
        query.setParameter("id", id);
        return (query.uniqueResult() != null);
    }

    @Override
    public String getNombre(Integer id) {
        Query query = getSession().createQuery("SELECT nombre from Especie e WHERE e.id = :id");
        query.setParameter("id", id);
        return (String) query.uniqueResult();
    }

}
