// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.intsidentspring.web;

import ee.itcollege.intsidentspring.entities.Intsident;
import ee.itcollege.intsidentspring.entities.Piirivalvur;
import ee.itcollege.intsidentspring.entities.PiirivalvurIntsidendis;
import ee.itcollege.intsidentspring.entities.VahtkondIntsidendis;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PiirivalvurIntsidendisController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String PiirivalvurIntsidendisController.create(@Valid PiirivalvurIntsidendis piirivalvurIntsidendis, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("piirivalvurIntsidendis", piirivalvurIntsidendis);
            addDateTimeFormatPatterns(uiModel);
            return "piirivalvurintsidendises/create";
        }
        uiModel.asMap().clear();
        piirivalvurIntsidendis.persist();
        return "redirect:/piirivalvurintsidendises/" + encodeUrlPathSegment(piirivalvurIntsidendis.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String PiirivalvurIntsidendisController.createForm(Model uiModel) {
        uiModel.addAttribute("piirivalvurIntsidendis", new PiirivalvurIntsidendis());
        addDateTimeFormatPatterns(uiModel);
        List dependencies = new ArrayList();
        if (Intsident.countIntsidents() == 0) {
            dependencies.add(new String[]{"intsident", "intsidents"});
        }
        if (Piirivalvur.countPiirivalvurs() == 0) {
            dependencies.add(new String[]{"piirivalvur", "piirivalvurs"});
        }
        if (VahtkondIntsidendis.countVahtkondIntsidendises() == 0) {
            dependencies.add(new String[]{"vahtkondintsidendis", "vahtkondintsidendises"});
        }
        uiModel.addAttribute("dependencies", dependencies);
        return "piirivalvurintsidendises/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String PiirivalvurIntsidendisController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("piirivalvurintsidendis", PiirivalvurIntsidendis.findPiirivalvurIntsidendis(id));
        uiModel.addAttribute("itemId", id);
        return "piirivalvurintsidendises/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String PiirivalvurIntsidendisController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("piirivalvurintsidendises", PiirivalvurIntsidendis.findPiirivalvurIntsidendisEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) PiirivalvurIntsidendis.countPiirivalvurIntsidendises() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("piirivalvurintsidendises", PiirivalvurIntsidendis.findAllPiirivalvurIntsidendises());
        }
        addDateTimeFormatPatterns(uiModel);
        return "piirivalvurintsidendises/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String PiirivalvurIntsidendisController.update(@Valid PiirivalvurIntsidendis piirivalvurIntsidendis, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("piirivalvurIntsidendis", piirivalvurIntsidendis);
            addDateTimeFormatPatterns(uiModel);
            return "piirivalvurintsidendises/update";
        }
        uiModel.asMap().clear();
        piirivalvurIntsidendis.merge();
        return "redirect:/piirivalvurintsidendises/" + encodeUrlPathSegment(piirivalvurIntsidendis.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String PiirivalvurIntsidendisController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("piirivalvurIntsidendis", PiirivalvurIntsidendis.findPiirivalvurIntsidendis(id));
        addDateTimeFormatPatterns(uiModel);
        return "piirivalvurintsidendises/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String PiirivalvurIntsidendisController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        PiirivalvurIntsidendis.findPiirivalvurIntsidendis(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/piirivalvurintsidendises";
    }
    
    @ModelAttribute("intsidents")
    public Collection<Intsident> PiirivalvurIntsidendisController.populateIntsidents() {
        return Intsident.findAllIntsidents();
    }
    
    @ModelAttribute("piirivalvurs")
    public Collection<Piirivalvur> PiirivalvurIntsidendisController.populatePiirivalvurs() {
        return Piirivalvur.findAllPiirivalvurs();
    }
    
    @ModelAttribute("piirivalvurintsidendises")
    public Collection<PiirivalvurIntsidendis> PiirivalvurIntsidendisController.populatePiirivalvurIntsidendises() {
        return PiirivalvurIntsidendis.findAllPiirivalvurIntsidendises();
    }
    
    @ModelAttribute("vahtkondintsidendises")
    public Collection<VahtkondIntsidendis> PiirivalvurIntsidendisController.populateVahtkondIntsidendises() {
        return VahtkondIntsidendis.findAllVahtkondIntsidendises();
    }
    
    void PiirivalvurIntsidendisController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("piirivalvurIntsidendis_avatud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("piirivalvurIntsidendis_muudetud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("piirivalvurIntsidendis_suletud_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("piirivalvurIntsidendis_alates_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("piirivalvurIntsidendis_kuni_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String PiirivalvurIntsidendisController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
