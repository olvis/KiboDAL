/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.intf;

import bo.com.kibo.entidades.RolPermiso;
import bo.com.kibo.entidades.RolPermisoId;
import java.util.List;

/**
 *
 * @author Olvinho
 */
public interface IRolPermisoDAO
        extends IDAOGenerico<RolPermiso, RolPermisoId> {

    List<RolPermiso> getPermisos(int idRol, Integer idPadre);
    
}
