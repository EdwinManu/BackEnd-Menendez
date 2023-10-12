
package com.example.Servicios;

import com.example.Entidades.Entidad;
import com.example.Repositorios.EntidadRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EntidadService {
    @Autowired
    private EntidadRepository entidadRepository;

    public List<Entidad> getAll() {
        return entidadRepository.findAll();
    }

    public Entidad getById(Long id) {
        return entidadRepository.findById(id).orElse(null);
    }

    public Entidad create(Entidad entidad) {
        return entidadRepository.save(entidad);
    }

    public Entidad update(Entidad entidad) {
        return entidadRepository.save(entidad);
    }

    public void delete(Long id) {
        entidadRepository.deleteById(id);
    }


}
