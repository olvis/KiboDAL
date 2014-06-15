/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.intf.IReporteDAO;
import bo.com.kibo.entidades.reportes.CensoGeneral;
import bo.com.kibo.entidades.reportes.TrozaGeneral;
import java.util.List;
import org.hibernate.Query;

/**
 *
 * @author Olvinho
 */
public class ReporteHibernateDAO
        extends DAOGenericoHibernate<CensoGeneral, Integer>
        implements IReporteDAO {

    @Override
    public List<CensoGeneral> obtenerCensoGeneral() {
        return obtenerTodos();
    }

    @Override
    public List<TrozaGeneral> obtenerTrozasGeneral() {
        Query query = getSession().createQuery("from TrozaGeneral");
        return query.list();
    }

    @Override
    public List<CensoGeneral> obtenerSaldoCenso() {
        Query query = getSession().createQuery("from CensoGeneral t "
                + "where t.estado = 0 and t.existe = 0");
        return query.list();
    }

    @Override
    public List<TrozaGeneral> obtenerTalaGeneral() {
        Query query = getSession().createQuery("from TrozaGeneral t "
                + "where t.fechaTala is not null");
        return query.list();
    }

    @Override
    public List<TrozaGeneral> obtenerTalaSaldo() {
        Query query = getSession().createQuery("from TrozaGeneral t "
                + "where t.estado = 1 and t.existe = 0");
        return query.list();
    }

    @Override
    public List<TrozaGeneral> obtenerExtraccionGeneral() {
        Query query = getSession().createQuery("from TrozaGeneral t "
                + "where t.fechaArrastre is not null");
        return query.list();
    }

    @Override
    public List<TrozaGeneral> obtenerExtraccionSaldo() {
        Query query = getSession().createQuery("from TrozaGeneral t "
                + "where t.estado = 2 and t.existe = 0");
        return query.list();
    }

    @Override
    public List<TrozaGeneral> obtenerDespachoGeneral() {
        Query query = getSession().createQuery("from TrozaGeneral t "
                + "where t.fechaDespacho is not null");
        return query.list();
    }

}
