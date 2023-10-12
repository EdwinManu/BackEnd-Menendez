
package com.example.Controladores;

import com.example.Entidades.TipoContribuyente;
import com.example.Servicios.TipoContribuyenteService;
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
@RequestMapping("/api/tipos-contribuyente")
public class TipoContribuyenteController {
    @Autowired
    private TipoContribuyenteService tipoContribuyenteService;

    @GetMapping
    public List<TipoContribuyente> getAllTiposContribuyente() {
        return tipoContribuyenteService.getAllTiposContribuyente();
    }

    @GetMapping("/{id}")
    public TipoContribuyente getTipoContribuyenteById(@PathVariable Long id) {
        return tipoContribuyenteService.getTipoContribuyenteById(id);
    }

    @PostMapping
    public TipoContribuyente createTipoContribuyente(@RequestBody TipoContribuyente tipoContribuyente) {
        return tipoContribuyenteService.saveTipoContribuyente(tipoContribuyente);
    }

    @PutMapping("/{id}")
    public TipoContribuyente updateTipoContribuyente(@PathVariable Integer id, @RequestBody TipoContribuyente tipoContribuyente) {
        return tipoContribuyenteService.saveTipoContribuyente(tipoContribuyente);
    }

    @DeleteMapping("/{id}")
    public void deleteTipoContribuyente(@PathVariable Long id) {
        tipoContribuyenteService.deleteTipoContribuyente(id);
    }
}
