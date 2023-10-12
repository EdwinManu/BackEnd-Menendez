
package com.example.Servicios;

import com.example.Entidades.TipoDocumento;
import com.example.Repositorios.TipoDocumentoRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TipoDocumentoService {
     @Autowired
    private TipoDocumentoRepository tipoDocumentoRepository;

    public List<TipoDocumento> getAllTiposDocumento() {
        return tipoDocumentoRepository.findAll();
    }

    public TipoDocumento getTipoDocumentoById(Long id) {
        return tipoDocumentoRepository.findById(id).orElse(null);
    }

    public TipoDocumento saveTipoDocumento(TipoDocumento tipoDocumento) {
        return tipoDocumentoRepository.save(tipoDocumento);
    }

    public void deleteTipoDocumento(Long id) {
        tipoDocumentoRepository.deleteById(id);
    }
}
