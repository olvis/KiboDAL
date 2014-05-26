/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.com.kibo.dal.impl;

import bo.com.kibo.dal.impl.control.HibernateUtil;
import bo.com.kibo.dal.intf.IGenericDAO;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Example;

/**
 *
 * @author Olvinho
 * @param <T>
 * @param <ID>
 */
public abstract class GenericHibernateDAO<T, ID extends Serializable> implements IGenericDAO<T, ID> {

    private final Class<T> persistentClass;
    private Session session;

    public GenericHibernateDAO() {
        this.persistentClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass())
                .getActualTypeArguments()[0];
    }

    public void setSession(Session s) {
        this.session = s;
    }

    protected Session getSession() {
        if (session == null) {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        return session;
    }

    public Class<T> getPersistentClass() {
        return persistentClass;
    }

    
    @Override
    public T obtenerPorId(ID id) {
        T entity;
        entity = (T) getSession().load(getPersistentClass(), id);
        return entity;
    }

    @Override
    public List<T> obtenerTodos() {
        return findByCriteria();
    }

    
    @Override
    public List<T> findByExample(T exampleInstance,String... excludeProperty) {
        Criteria crit = getSession().createCriteria(getPersistentClass());
        Example example = Example.create(exampleInstance);
        for (String exclude : excludeProperty) {
            example.excludeProperty(exclude);
        }
        crit.add(example);
        return crit.list();
    }

    @Override
    public T persistir(T entity) {
        getSession().saveOrUpdate(entity);
        return entity;
    }

    @Override
    public void flush() {
        getSession().flush();
    }

    @Override
    public void clear() {
        getSession().clear();
    }

    /**
     * Use this inside subclasses as a convenience method.
     * @param criterion
     * @return 
     */
    protected List<T> findByCriteria(Criterion... criterion) {
        Criteria crit =
                getSession().createCriteria(getPersistentClass());
        for (Criterion c : criterion) {
            crit.add(c);
        }
        return crit.list();
    }

}
