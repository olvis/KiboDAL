/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl.control;

import bo.com.kibo.dal.intf.control.IDAOManager;

/**
 *
 * @author Olvinho
 */
public class FactoriaDAOManager {

    private static final ThreadLocal<IDAOManager> caja = new ThreadLocal<>();

    public static IDAOManager getDAOManager() {
        IDAOManager daoManager = caja.get();
        if (daoManager == null) {
            daoManager = new DAOManagerHibernate();
            caja.set(daoManager);
        }
        return daoManager;
    }
}
