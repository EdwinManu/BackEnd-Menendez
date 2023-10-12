
package com.example.Controladores;

import com.example.Entidades.Entidad;
import com.example.Servicios.EntidadService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/api/entidades")
public class EntidadController {

    @Autowired
    private EntidadService entidadService;

    @GetMapping
    public List<Entidad> getAll() {
        return entidadService.getAll();
    }

    @GetMapping("/{id}")
    public Entidad getById(@PathVariable Long id) {
        return entidadService.getById(id);
    }

    @PostMapping
    public Entidad create(@RequestBody Entidad entidad) {
        return entidadService.create(entidad);
    }

    @PutMapping("/{id}")
    public Entidad update(@PathVariable Long id, @RequestBody Entidad entidad) {
        // aquí puedes agregar lógica adicional si es necesario, como asegurarte de que el ID en el path y en el objeto sean iguales
        return entidadService.update(entidad);
    }

    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {
        entidadService.delete(id);
    }
}
