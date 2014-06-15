/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.intf.IPatioDAO;
import bo.com.kibo.entidades.Patio;
import java.util.List;
import org.hibernate.Query;

/**
 *
 * @author Olvinho
 */
public class PatioHibernateDAO
        extends GeoLugarHibernateDAO<Patio>
        implements IPatioDAO {

    @Override
    public Integer getIdPorNombre(String nombre) {
        Query query = getSession().createQuery("SELECT id from Patio p WHERE p.nombre = :nombre");
        query.setParameter("nombre", nombre);
        return (Integer) query.uniqueResult();
    }

    @Override
    public boolean checkId(Integer id) {
        Query query = getSession().createQuery("SELECT 1 from Patio p WHERE p.id = :id");
        query.setParameter("id", id);
        return (query.uniqueResult() != null);
    }

    @Override
    public String getNombre(Integer id) {
        Query query = getSession().createQuery("SELECT nombre from Patio p WHERE p.id = :id");
        query.setParameter("id", id);
        return (String) query.uniqueResult();
    }

    @Override
    public List<Patio> obtenerPatiosSegunArea(Integer idArea) {
        Query query = getSession().createQuery("from Patio p Where p.area.id = :idArea");
        query.setParameter("idArea", idArea);
        return query.list();
    }

    @Override
    public Integer getIdPatioPorNombre(String nombre, Integer idArea) {
        Query query = getSession().createQuery("SELECT id from Patio p "
                + "WHERE p.nombre = :nombre AND p.area.id = :idArea");
        query.setParameter("nombre", nombre);
        query.setParameter("idArea", idArea);
        return (Integer) query.uniqueResult();
    }

}
