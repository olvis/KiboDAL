/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.intf.ITrozaDAO;
import bo.com.kibo.entidades.Troza;
import java.util.List;
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

    @Override
    public boolean checkNumero(Integer numero) {
        Query query = getSession().createQuery("Select 1  From Troza t Where t.numero = :numero");
        query.setParameter("numero", numero);
        return (query.uniqueResult() != null);
    }

    @Override
    public String getCodigo(Integer numero) {
        Query query = getSession().createQuery("Select codigo From Troza t Where t.numero = :numero");
        query.setParameter("numero", numero);
        return (String) query.uniqueResult();
    }

    @Override
    public List<Troza> getTrozasParaTala(Integer idArea) {
        Query query = getSession().createQuery("from Troza t Where t.area.id = :idArea "
                + "and t.existe = 0 and t.estado = 0");
        query.setParameter("idArea", idArea);
        return query.list();
    }

    @Override
    public List<Troza> getTrozasParaExtraccion(Integer idArea) {
        Query query = getSession().createQuery("from Troza t Where t.area.id = :idArea "
                + "and t.existe = 0 and t.estado = 1");
        query.setParameter("idArea", idArea);
        return query.list();
    }

    @Override
    public List<Troza> getTrozasParaMovimiento(Integer idArea) {
        Query query = getSession().createQuery("from Troza t Where t.area.id = :idArea "
                + "and t.existe = 0 and t.estado = 2");
        query.setParameter("idArea", idArea);
        return query.list();
    }

    @Override
    public List<String> getCodigosTrozaParaTala(Integer idArea, String codigoParcial) {
        Query query = getSession().createQuery("Select codigo from Troza t "
                + "Where t.area.id = :idArea and t.existe = 0 and t.estado = 0"
                + " and t.codigo LIKE :codigoParcial");
        query.setParameter("idArea", idArea);
        query.setParameter("codigoParcial", codigoParcial + "%");
        return query.list();
    }

}
