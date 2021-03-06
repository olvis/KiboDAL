/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.intf.control;

import bo.com.kibo.dal.intf.IAreaDAO;
import bo.com.kibo.dal.intf.ICalidadDAO;
import bo.com.kibo.dal.intf.ICargaDAO;
import bo.com.kibo.dal.intf.IEspecieDAO;
import bo.com.kibo.dal.intf.IFajaDAO;
import bo.com.kibo.dal.intf.IFormularioCensoDAO;
import bo.com.kibo.dal.intf.IFormularioCortaDAO;
import bo.com.kibo.dal.intf.IFormularioExtraccionDAO;
import bo.com.kibo.dal.intf.IFormularioMovimientoDAO;
import bo.com.kibo.dal.intf.IPatioDAO;
import bo.com.kibo.dal.intf.IReporteDAO;
import bo.com.kibo.dal.intf.IRolDAO;
import bo.com.kibo.dal.intf.IRolPermisoDAO;
import bo.com.kibo.dal.intf.ITrozaDAO;
import bo.com.kibo.dal.intf.IUsuarioDAO;

/**
 *
 * @author Olvinho
 */
public interface IDAOManager {

    IAreaDAO getAreaDAO();

    ICalidadDAO getCalidadDAO();

    IEspecieDAO getEspecieDAO();

    IFormularioCensoDAO getFormularioCensoDAO();

    IFormularioCortaDAO getFormularioCortaDAO();

    IFormularioExtraccionDAO getFormularioExtraccionDAO();

    IFormularioMovimientoDAO getFormularioMovimientoDAO();

    ICargaDAO getCargaDAO();

    IPatioDAO getPatioDAO();

    IFajaDAO getFajaDAO();

    IRolPermisoDAO getRolPermisoDAO();

    IUsuarioDAO getUsuarioDAO();

    IRolDAO getRolDAO();

    ITrozaDAO getTrozaDAO();

    IReporteDAO getReporteDOA();

    void iniciarTransaccion();

    void confirmarTransaccion();

    void cancelarTransaccion();
}
