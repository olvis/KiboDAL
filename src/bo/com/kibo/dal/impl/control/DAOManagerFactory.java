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
public class DAOManagerFactory {
    private static final ThreadLocal<IDAOManager> box = new ThreadLocal<>();
    
    public static IDAOManager getDAOManager(){
        IDAOManager daoManager = box.get();
        if (daoManager == null){
            daoManager = new DAOManagerHibernate();
            box.set(daoManager);
        }
        return daoManager;
    }
}
