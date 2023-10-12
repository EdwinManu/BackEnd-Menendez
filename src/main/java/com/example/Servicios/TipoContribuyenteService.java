
package com.example.Servicios;

import com.example.Entidades.TipoContribuyente;
import com.example.Repositorios.TipoContribuyenteRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TipoContribuyenteService {
    @Autowired
    private TipoContribuyenteRepository tipoContribuyenteRepository;

    public List<TipoContribuyente> getAllTiposContribuyente() {
        return tipoContribuyenteRepository.findAll();
    }

    public TipoContribuyente getTipoContribuyenteById(Long id) {
        return tipoContribuyenteRepository.findById(id).orElse(null);
    }

    public TipoContribuyente saveTipoContribuyente(TipoContribuyente tipoContribuyente) {
        return tipoContribuyenteRepository.save(tipoContribuyente);
    }

    public void deleteTipoContribuyente(Long id) {
        tipoContribuyenteRepository.deleteById(id);
    }
}
