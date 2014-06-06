/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.intf.IFajaDAO;
import bo.com.kibo.entidades.Faja;
import java.util.List;
import org.hibernate.Query;

/**
 *
 * @author Olvinho
 */
public class FajaHibernateDAO extends GeoLugarHibernateDAO<Faja> implements IFajaDAO {

    @Override
    public boolean existeFaja(Faja faja) {
        Query query = getSession().createQuery("Select 1 From Faja f Where f.area.id = :idArea AND f.numero = :numero AND f.bloque = :bloque");
        query.setParameter("idArea", faja.getArea().getId());
        query.setParameter("numero", faja.getNumero());
        query.setParameter("bloque", faja.getBloque());
        return (query.uniqueResult() != null);
    }

    @Override
    public boolean checkId(Integer id) {
        Query query = getSession().createQuery("SELECT 1 from Faja f WHERE f.id = :id");
        query.setParameter("id", id);
        return (query.uniqueResult() != null);
    }

    @Override
    public Integer getIdPorBloqueYNumero(String bloque, int numero) {
        Query query = getSession().createQuery("Select id From Faja f Where f.numero = :numero AND f.bloque = :bloque");
        query.setParameter("numero", numero);
        query.setParameter("bloque", bloque);
        return (Integer) query.uniqueResult();
    }

    @Override
    public List<Faja> obtenerFajasSegunArea(Integer idArea) {
        Query query = getSession().createQuery("from Faja f Where f.area.id = :idArea");
        query.setParameter("idArea", idArea);
        return query.list();
    }

}
