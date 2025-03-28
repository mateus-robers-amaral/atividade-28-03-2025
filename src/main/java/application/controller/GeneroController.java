package application.controller;

import application.model.Genero;
import application.repository.GeneroRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/generos")
public class GeneroController {

    private final GeneroRepository repository;

    public GeneroController(GeneroRepository repository) {
        this.repository = repository;
    }

    @GetMapping
    public String listar(Model model) {
        model.addAttribute("generos", repository.findAll());
        return "genero/listar";
    }

    @GetMapping("/novo")
    public String novo(Model model) {
        model.addAttribute("genero", new Genero());
        return "genero/novo";
    }

    @PostMapping
    public String salvar(@ModelAttribute Genero genero) {
        repository.save(genero);
        return "redirect:/generos";
    }

    @GetMapping("/editar/{id}")
    public String editar(@PathVariable Long id, Model model) {
        return repository.findById(id).map(genero -> {
            model.addAttribute("genero", genero);
            return "genero/editar";
        }).orElse("redirect:/home?notfound=true");
    }

    @PostMapping("/atualizar/{id}")
    public String atualizar(@PathVariable Long id, @ModelAttribute Genero genero) {
        genero.setId(id);
        repository.save(genero);
        return "redirect:/generos";
    }

    @GetMapping("/excluir/{id}")
    public String excluir(@PathVariable Long id) {
        repository.deleteById(id);
        return "redirect:/generos";
    }
}
