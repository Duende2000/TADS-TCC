/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.tads.tccpool.beans;

import br.com.tads.tccpool.interfaces.Anunciavel;
import java.io.Serializable;


/**
 *
 * @author onurb
 */
public class Anuncio implements Serializable {
    public Anunciavel obj;

    public Anunciavel getObj() {
        return obj;
    }

    public void setObj(Anunciavel obj) {
        this.obj = obj;
    }
}
