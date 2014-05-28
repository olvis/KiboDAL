/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl.control;

import bo.com.kibo.dal.impl.AreaHibernateDAO;
import bo.com.kibo.dal.impl.CalidadHibernateDAO;
import bo.com.kibo.dal.impl.CargaHibernateDAO;
import bo.com.kibo.dal.impl.DestinoHibernateDAO;
import bo.com.kibo.dal.impl.EspecieHibernateDAO;
import bo.com.kibo.dal.impl.FajaHibernateDAO;
import bo.com.kibo.dal.impl.FormularioCensoHibernateDAO;
import bo.com.kibo.dal.impl.FormularioCortaHibernateDAO;
import bo.com.kibo.dal.impl.FormularioExtraccionHibernateDAO;
import bo.com.kibo.dal.impl.FormularioMovimientoHibernateDAO;
import bo.com.kibo.dal.impl.PatioHibernateDAO;
import bo.com.kibo.dal.impl.RolPermisoHibernateDAO;
import bo.com.kibo.dal.impl.UsuarioHibernateDAO;
import bo.com.kibo.dal.intf.IAreaDAO;
import bo.com.kibo.dal.intf.ICalidadDAO;
import bo.com.kibo.dal.intf.ICargaDAO;
import bo.com.kibo.dal.intf.control.IDAOManager;
import bo.com.kibo.dal.intf.IDestinoDAO;
import bo.com.kibo.dal.intf.IEspecieDAO;
import bo.com.kibo.dal.intf.IFajaDAO;
import bo.com.kibo.dal.intf.IFormularioCensoDAO;
import bo.com.kibo.dal.intf.IFormularioCortaDAO;
import bo.com.kibo.dal.intf.IFormularioExtraccionDAO;
import bo.com.kibo.dal.intf.IFormularioMovimientoDAO;
import bo.com.kibo.dal.intf.IPatioDAO;
import bo.com.kibo.dal.intf.IRolPermisoDAO;
import bo.com.kibo.dal.intf.IUsuarioDAO;

/**
 *
 * @author Olvinho
 */
public class DAOManagerHibernate implements IDAOManager {

    public DAOManagerHibernate() {

    }

    private IAreaDAO areaDAO;

    @Override
    public IAreaDAO getAreaDAO() {
        if (areaDAO == null) {
            areaDAO = new AreaHibernateDAO();
        }
        return areaDAO;
    }

    private ICalidadDAO calidadDAO;

    @Override
    public ICalidadDAO getCalidadDAO() {
        if (calidadDAO == null) {
            calidadDAO = new CalidadHibernateDAO();
        }
        return calidadDAO;
    }

    private IEspecieDAO especieDAO;

    @Override
    public IEspecieDAO getEspecieDAO() {
        if (especieDAO == null) {
            especieDAO = new EspecieHibernateDAO();
        }
        return especieDAO;
    }

    private IFormularioCensoDAO formularioCensoDAO;

    @Override
    public IFormularioCensoDAO getFormularioCensoDAO() {
        if (formularioCensoDAO == null) {
            formularioCensoDAO = new FormularioCensoHibernateDAO();
        }
        return formularioCensoDAO;
    }

    private IFormularioCortaDAO formularioCortaDAO;

    @Override
    public IFormularioCortaDAO getFormularioCortaDAO() {
        if (formularioCortaDAO == null) {
            formularioCortaDAO = new FormularioCortaHibernateDAO();
        }
        return formularioCortaDAO;
    }

    private IFormularioExtraccionDAO formularioExtraccionDAO;

    @Override
    public IFormularioExtraccionDAO getFormularioExtraccionDAO() {
        if (formularioExtraccionDAO == null) {
            formularioExtraccionDAO = new FormularioExtraccionHibernateDAO();
        }
        return formularioExtraccionDAO;
    }

    private IFormularioMovimientoDAO formularioMovimientoDAO;

    @Override
    public IFormularioMovimientoDAO getFormularioMovimientoDAO() {
        if (formularioMovimientoDAO == null) {
            formularioMovimientoDAO = new FormularioMovimientoHibernateDAO();
        }
        return formularioMovimientoDAO;
    }

    private ICargaDAO cargaDAO;
    @Override
    public ICargaDAO getCargaDAO() {
        if (cargaDAO == null){
            cargaDAO = new CargaHibernateDAO();
        }
        return cargaDAO;
    }

    private IPatioDAO patioDAO;
    @Override
    public IPatioDAO getPatioDAO() {
        if (patioDAO == null){
            patioDAO = new PatioHibernateDAO();
        }
        return patioDAO;
    }

    private IFajaDAO fajaDAO;
    @Override
    public IFajaDAO getFajaDAO() {
        if (fajaDAO == null){
            fajaDAO = new FajaHibernateDAO();
        }
        return fajaDAO;
    }

    private IDestinoDAO destinoDAO;
    @Override
    public IDestinoDAO getDestinoDAO() {
        if (destinoDAO == null){
            destinoDAO = new DestinoHibernateDAO();
        }
        return destinoDAO;
    }

    private IRolPermisoDAO rolPermisoDAO;
    @Override
    public IRolPermisoDAO getRolPermisoDAO() {
        if (rolPermisoDAO == null){
            rolPermisoDAO = new RolPermisoHibernateDAO();
        } 
        return rolPermisoDAO;
    }

    private IUsuarioDAO usuarioDAO;
    @Override
    public IUsuarioDAO getUsuarioDAO() {
        if (usuarioDAO == null){
            usuarioDAO = new UsuarioHibernateDAO();
        }
        return usuarioDAO;
    }
    
    

    @Override
    public void iniciarTransaccion() {
        HibernateUtil.getSessionFactory().getCurrentSession().beginTransaction();
    }

    @Override
    public void confirmarTransaccion() {
        HibernateUtil.getSessionFactory().getCurrentSession().getTransaction().commit();
    }

    @Override
    public void cancelarTransaccion() {
        if (HibernateUtil.getSessionFactory().getCurrentSession().getTransaction() != null){
            HibernateUtil.getSessionFactory().getCurrentSession().getTransaction().rollback();
        }
    }

}
