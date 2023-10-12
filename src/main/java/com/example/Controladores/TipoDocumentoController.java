
package com.example.Controladores;

import com.example.Entidades.TipoDocumento;
import com.example.Servicios.TipoDocumentoService;
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
@RequestMapping("/api/tipos-documento")
public class TipoDocumentoController {
    @Autowired
    private TipoDocumentoService tipoDocumentoService;

    @GetMapping
    public List<TipoDocumento> getAllTiposDocumento() {
        return tipoDocumentoService.getAllTiposDocumento();
    }

    @GetMapping("/{id}")
    public TipoDocumento getTipoDocumentoById(@PathVariable Long id) {
        return tipoDocumentoService.getTipoDocumentoById(id);
    }

    @PostMapping
    public TipoDocumento createTipoDocumento(@RequestBody TipoDocumento tipoDocumento) {
        return tipoDocumentoService.saveTipoDocumento(tipoDocumento);
    }

    @PutMapping("/{id}")
    public TipoDocumento updateTipoDocumento(@PathVariable Integer id, @RequestBody TipoDocumento tipoDocumento) {
        return tipoDocumentoService.saveTipoDocumento(tipoDocumento);
    }

    @DeleteMapping("/{id}")
    public void deleteTipoDocumento(@PathVariable Long id) {
        tipoDocumentoService.deleteTipoDocumento(id);
    }
}
