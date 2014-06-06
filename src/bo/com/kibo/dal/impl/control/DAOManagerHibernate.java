/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl.control;

import bo.com.kibo.dal.exceptions.DAOException;
import bo.com.kibo.dal.impl.AreaHibernateDAO;
import bo.com.kibo.dal.impl.CalidadHibernateDAO;
import bo.com.kibo.dal.impl.CargaHibernateDAO;
import bo.com.kibo.dal.impl.DAOGenericoHibernate;
import bo.com.kibo.dal.impl.DestinoHibernateDAO;
import bo.com.kibo.dal.impl.EspecieHibernateDAO;
import bo.com.kibo.dal.impl.FajaHibernateDAO;
import bo.com.kibo.dal.impl.FormularioCensoHibernateDAO;
import bo.com.kibo.dal.impl.FormularioCortaHibernateDAO;
import bo.com.kibo.dal.impl.FormularioExtraccionHibernateDAO;
import bo.com.kibo.dal.impl.FormularioMovimientoHibernateDAO;
import bo.com.kibo.dal.impl.PatioHibernateDAO;
import bo.com.kibo.dal.impl.RolHibernateDAO;
import bo.com.kibo.dal.impl.RolPermisoHibernateDAO;
import bo.com.kibo.dal.impl.TrozaHibernateDAO;
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
import bo.com.kibo.dal.intf.IRolDAO;
import bo.com.kibo.dal.intf.IRolPermisoDAO;
import bo.com.kibo.dal.intf.ITrozaDAO;
import bo.com.kibo.dal.intf.IUsuarioDAO;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;

/**
 *
 * @author Olvinho
 */
public class DAOManagerHibernate implements IDAOManager {

    private static final Logger LOG = Logger.getLogger(DAOManagerHibernate.class.getName());

    public DAOManagerHibernate() {

    }

    private IAreaDAO areaDAO;

    @Override
    public IAreaDAO getAreaDAO() {
        if (areaDAO == null) {
            areaDAO = new AreaHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) areaDAO);
        }
        return areaDAO;
    }

    private ICalidadDAO calidadDAO;

    @Override
    public ICalidadDAO getCalidadDAO() {
        if (calidadDAO == null) {
            calidadDAO = new CalidadHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) calidadDAO);
        }
        return calidadDAO;
    }

    private IEspecieDAO especieDAO;

    @Override
    public IEspecieDAO getEspecieDAO() {
        if (especieDAO == null) {
            especieDAO = new EspecieHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) especieDAO);
        }
        return especieDAO;
    }

    private IFormularioCensoDAO formularioCensoDAO;

    @Override
    public IFormularioCensoDAO getFormularioCensoDAO() {
        if (formularioCensoDAO == null) {
            formularioCensoDAO = new FormularioCensoHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) formularioCensoDAO);
        }
        return formularioCensoDAO;
    }

    private IFormularioCortaDAO formularioCortaDAO;

    @Override
    public IFormularioCortaDAO getFormularioCortaDAO() {
        if (formularioCortaDAO == null) {
            formularioCortaDAO = new FormularioCortaHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) formularioCortaDAO);
        }
        return formularioCortaDAO;
    }

    private IFormularioExtraccionDAO formularioExtraccionDAO;

    @Override
    public IFormularioExtraccionDAO getFormularioExtraccionDAO() {
        if (formularioExtraccionDAO == null) {
            formularioExtraccionDAO = new FormularioExtraccionHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) formularioExtraccionDAO);
        }
        return formularioExtraccionDAO;
    }

    private IFormularioMovimientoDAO formularioMovimientoDAO;

    @Override
    public IFormularioMovimientoDAO getFormularioMovimientoDAO() {
        if (formularioMovimientoDAO == null) {
            formularioMovimientoDAO = new FormularioMovimientoHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) formularioMovimientoDAO);
        }
        return formularioMovimientoDAO;
    }

    private ICargaDAO cargaDAO;

    @Override
    public ICargaDAO getCargaDAO() {
        if (cargaDAO == null) {
            cargaDAO = new CargaHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) cargaDAO);
        }
        return cargaDAO;
    }

    private IPatioDAO patioDAO;

    @Override
    public IPatioDAO getPatioDAO() {
        if (patioDAO == null) {
            patioDAO = new PatioHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) patioDAO);
        }
        return patioDAO;
    }

    private IFajaDAO fajaDAO;

    @Override
    public IFajaDAO getFajaDAO() {
        if (fajaDAO == null) {
            fajaDAO = new FajaHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) fajaDAO);
        }
        return fajaDAO;
    }

    private IDestinoDAO destinoDAO;

    @Override
    public IDestinoDAO getDestinoDAO() {
        if (destinoDAO == null) {
            destinoDAO = new DestinoHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) destinoDAO);
        }
        return destinoDAO;
    }

    private IRolPermisoDAO rolPermisoDAO;

    @Override
    public IRolPermisoDAO getRolPermisoDAO() {
        if (rolPermisoDAO == null) {
            rolPermisoDAO = new RolPermisoHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) rolPermisoDAO);
        }
        return rolPermisoDAO;
    }

    private IUsuarioDAO usuarioDAO;

    @Override
    public IUsuarioDAO getUsuarioDAO() {
        if (usuarioDAO == null) {
            usuarioDAO = new UsuarioHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) usuarioDAO);
        }
        return usuarioDAO;
    }

    private IRolDAO rolDAO;

    @Override
    public IRolDAO getRolDAO() {
        if (rolDAO == null) {
            rolDAO = new RolHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) rolDAO);
        }
        return rolDAO;
    }

    private ITrozaDAO trozaDAO;

    @Override
    public ITrozaDAO getTrozaDAO() {
        if (trozaDAO == null) {
            trozaDAO = new TrozaHibernateDAO();
            asignarSesionActual((DAOGenericoHibernate) trozaDAO);
        }
        return trozaDAO;
    }

    private void asignarSesionActual(DAOGenericoHibernate dao) {
        if (dao != null) {
            dao.setSession(sesion);
        }
    }

    private void asignarNuevaSesion() {
        asignarSesionActual((DAOGenericoHibernate) areaDAO);
        asignarSesionActual((DAOGenericoHibernate) calidadDAO);
        asignarSesionActual((DAOGenericoHibernate) especieDAO);
        asignarSesionActual((DAOGenericoHibernate) formularioCensoDAO);
        asignarSesionActual((DAOGenericoHibernate) formularioCortaDAO);
        asignarSesionActual((DAOGenericoHibernate) formularioExtraccionDAO);
        asignarSesionActual((DAOGenericoHibernate) formularioExtraccionDAO);
        asignarSesionActual((DAOGenericoHibernate) cargaDAO);
        asignarSesionActual((DAOGenericoHibernate) patioDAO);
        asignarSesionActual((DAOGenericoHibernate) fajaDAO);
        asignarSesionActual((DAOGenericoHibernate) destinoDAO);
        asignarSesionActual((DAOGenericoHibernate) rolPermisoDAO);
        asignarSesionActual((DAOGenericoHibernate) usuarioDAO);
        asignarSesionActual((DAOGenericoHibernate) rolDAO);
        asignarSesionActual((DAOGenericoHibernate) trozaDAO);

    }

    Session sesion;

    @Override
    public void iniciarTransaccion() {
        try {
            sesion = HibernateUtil.getSessionFactory().openSession();
            asignarNuevaSesion();
            sesion.beginTransaction();
        } catch (HibernateException e) {
            LOG.log(Level.SEVERE, null, e);
            throw new DAOException("Imposible iniciar la transacción", e);
        }

    }

    @Override
    public void confirmarTransaccion() {
        try {
            sesion.getTransaction().commit();
            sesion.close();
        } catch (HibernateException e) {
            LOG.log(Level.SEVERE, null, e);
            throw new DAOException("Imposible confirmar la transacción", e);
        }

    }

    @Override
    public void cancelarTransaccion() {
        try {
            if (sesion.getTransaction() != null) {
                sesion.getTransaction().rollback();
            }
            sesion.close();
        } catch (HibernateException e) {
            LOG.log(Level.SEVERE, null, e);
            throw new DAOException("Imposible cancelar la trasancción", e);
        }

    }

}
