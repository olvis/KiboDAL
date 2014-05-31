/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.intf.IUsuarioDAO;
import bo.com.kibo.entidades.Usuario;
import org.hibernate.Query;

/**
 *
 * @author Olvinho
 */
public class UsuarioHibernateDAO extends DAOGenericoHibernate<Usuario, Integer> implements IUsuarioDAO{

    @Override
    public Integer getIdUsuarioPorEmail(String email) {
        Query query = getSession().createQuery("SELECT id FROM Usuario u WHERE u.email = :email");
        query.setParameter("email", email);
        return (Integer)query.uniqueResult();
    }
    
}
