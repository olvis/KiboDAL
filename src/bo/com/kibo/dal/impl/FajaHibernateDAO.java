/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.intf.IFajaDAO;
import bo.com.kibo.entidades.Faja;
import org.hibernate.Query;

/**
 *
 * @author Olvinho
 */
public class FajaHibernateDAO extends GeoLugarHibernateDAO<Faja> implements IFajaDAO{

    @Override
    public boolean existeFaja(Faja faja) {
        Query query = getSession().createQuery("Select 1 From Faja f Where f.area.id = :idArea AND f.numero = :numero AND f.bloque = :bloque");
        query.setParameter("idArea", faja.getArea().getId());
        query.setParameter("numero", faja.getNumero());
        query.setParameter("bloque", faja.getBloque());
        return (query.uniqueResult() != null);
    }
    
}
