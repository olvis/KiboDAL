/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.intf.ICargaDAO;
import bo.com.kibo.entidades.Carga;
import org.hibernate.Query;

/**
 *
 * @author Olvinho
 */
public class CargaHibernateDAO extends DAOGenericoHibernate<Carga, Integer> implements ICargaDAO {

    @Override
    public Integer getIdPorCodigo(String codigo) {
        Query query = getSession().createQuery("SELECT id from Carga c WHERE c.codigo = :codigo");
        query.setParameter("codigo", codigo);
        return (Integer) query.uniqueResult();
    }

    @Override
    public boolean checkId(Integer id) {
        Query query = getSession().createQuery("SELECT 1 from Carga c WHERE c.id = :id");
        query.setParameter("id", id);
        return (query.uniqueResult() != null);
    }

}
