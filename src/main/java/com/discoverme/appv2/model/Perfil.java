package com.discoverme.appv2.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
@Table(name = "perfiles")
public class Perfil implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    
    @NotNull
    @Column(name = "nombre", length = 30)
    private String nombre;

//    @ManyToMany(cascade = {CascadeType.ALL})
    @ManyToMany(fetch = FetchType.EAGER)
    @LazyCollection(LazyCollectionOption.TRUE)
    @JoinTable(name = "perfiles_tipos",joinColumns = @JoinColumn(name = "perfil_id"), inverseJoinColumns = @JoinColumn(name = "tipos_id"))
//    @JoinTable(
//            name = "perfiles_tipos",
//            joinColumns = @JoinColumn(name = "perfil_id", nullable = false),
//            inverseJoinColumns = @JoinColumn(name = "tipos_id", nullable = false)
//    )
//    @ManyToMany(cascade = CascadeType.ALL)
    private List<Tipo> tipos = new ArrayList();   
    
    public Perfil() {
    }

    public Perfil(Integer id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public List<Tipo> getTipos() {
        return tipos;
    }

    public void setTipos(List<Tipo> tipos) {
        this.tipos = tipos;
    }

}
