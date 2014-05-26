/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package bo.com.kibo.dal.intf;

import java.io.Serializable;
import java.util.List;

/**
 *
 * @author Olvinho
 * @param <T>
 * @param <ID>
 */
public interface IGenericDAO<T, ID extends Serializable> {
    T obtenerPorId(ID id);
    List<T> obtenerTodos();
    List<T> findByExample(T exampleInstance, String... excludeProperty);
    T persistir(T entity);
    void flush();
    void clear();
}
