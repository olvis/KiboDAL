/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.intf.control;

import bo.com.kibo.dal.intf.IAreaDAO;
import bo.com.kibo.dal.intf.ICalidadDAO;
import bo.com.kibo.dal.intf.ICargaDAO;
import bo.com.kibo.dal.intf.IDestinoDAO;
import bo.com.kibo.dal.intf.IEspecieDAO;
import bo.com.kibo.dal.intf.IFajaDAO;
import bo.com.kibo.dal.intf.IFormularioCensoDAO;
import bo.com.kibo.dal.intf.IFormularioCortaDAO;
import bo.com.kibo.dal.intf.IFormularioExtraccionDAO;
import bo.com.kibo.dal.intf.IFormularioMovimientoDAO;
import bo.com.kibo.dal.intf.IPatioDAO;

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

    IDestinoDAO getDestinoDAO();

    void iniciarTransaccion();

    void confirmarTransaccion();

    void cancelarTransaccion();
}
