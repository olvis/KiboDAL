/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.intf.IRolPermisoDAO;
import bo.com.kibo.entidades.RolPermiso;
import bo.com.kibo.entidades.RolPermisoId;
import java.util.List;
import org.hibernate.Query;

/**
 *
 * @author Olvinho
 */
public class RolPermisoHibernateDAO extends DAOGenericoHibernate<RolPermiso, RolPermisoId> implements IRolPermisoDAO {

    @Override
    public List<RolPermiso> getPermisos(int idRol, Integer idPadre) {
        Query query;
        if (idPadre == null){
            query = getSession().
                    createQuery("from RolPermiso rp where rp.rol.id =  :idRol "
                            + "and rp.permiso in (from Permiso p where p.padre is null)");
        }else{
            query = getSession().
                    createQuery("from RolPermiso rp where rp.rol.id = :idRol and "
                    + "rp.permiso in (from Permiso p where p.padre.id = :idPadre)");
            query.setParameter("idPadre", idPadre);
        }
        query.setParameter("idRol", idRol);
        List<RolPermiso> resultado = query.list();
        for (RolPermiso rp : resultado) {
            rp.getPermiso().getDescripcion();
        }
        return resultado;
    }

}
