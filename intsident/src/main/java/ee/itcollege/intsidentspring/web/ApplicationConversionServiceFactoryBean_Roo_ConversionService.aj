// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.intsidentspring.web;

import ee.itcollege.intsidentspring.entities.IntsidendiTyyp;
import ee.itcollege.intsidentspring.entities.Intsident;
import ee.itcollege.intsidentspring.entities.IsikIntsidendis;
import ee.itcollege.intsidentspring.entities.Objekt;
import ee.itcollege.intsidentspring.entities.ObjektIntsidendis;
import ee.itcollege.intsidentspring.entities.Piiriloik;
import ee.itcollege.intsidentspring.entities.Piiririkkuja;
import ee.itcollege.intsidentspring.entities.Piirivalvur;
import ee.itcollege.intsidentspring.entities.PiirivalvurIntsidendis;
import ee.itcollege.intsidentspring.entities.Vahtkond;
import ee.itcollege.intsidentspring.entities.VahtkondIntsidendis;
import ee.itcollege.intsidentspring.entities.VahtkondPiiriloigul;
import java.lang.String;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(new IntsidendiTyypConverter());
        registry.addConverter(new IntsidentConverter());
        registry.addConverter(new IsikIntsidendisConverter());
        registry.addConverter(new ObjektConverter());
        registry.addConverter(new ObjektIntsidendisConverter());
        registry.addConverter(new PiiriloikConverter());
        registry.addConverter(new PiiririkkujaConverter());
        registry.addConverter(new PiirivalvurConverter());
        registry.addConverter(new PiirivalvurIntsidendisConverter());
        registry.addConverter(new VahtkondConverter());
        registry.addConverter(new VahtkondIntsidendisConverter());
        registry.addConverter(new VahtkondPiiriloigulConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
    static class ee.itcollege.intsidentspring.web.ApplicationConversionServiceFactoryBean.IntsidendiTyypConverter implements Converter<IntsidendiTyyp, String> {
        public String convert(IntsidendiTyyp intsidendiTyyp) {
            return new StringBuilder().append(intsidendiTyyp.getAvaja()).append(" ").append(intsidendiTyyp.getAvatud()).append(" ").append(intsidendiTyyp.getMuutja()).append(" ").append(intsidendiTyyp.getMuudetud()).toString();
        }
        
    }
    
    static class ee.itcollege.intsidentspring.web.ApplicationConversionServiceFactoryBean.IntsidentConverter implements Converter<Intsident, String> {
        public String convert(Intsident intsident) {
            return new StringBuilder().append(intsident.getAvaja()).append(" ").append(intsident.getAvatud()).append(" ").append(intsident.getMuutja()).append(" ").append(intsident.getMuudetud()).toString();
        }
        
    }
    
    static class ee.itcollege.intsidentspring.web.ApplicationConversionServiceFactoryBean.IsikIntsidendisConverter implements Converter<IsikIntsidendis, String> {
        public String convert(IsikIntsidendis isikIntsidendis) {
            return new StringBuilder().append(isikIntsidendis.getAvaja()).append(" ").append(isikIntsidendis.getAvatud()).append(" ").append(isikIntsidendis.getMuutja()).append(" ").append(isikIntsidendis.getMuudetud()).toString();
        }
        
    }
    
    static class ee.itcollege.intsidentspring.web.ApplicationConversionServiceFactoryBean.ObjektConverter implements Converter<Objekt, String> {
        public String convert(Objekt objekt) {
            return new StringBuilder().append(objekt.getAvaja()).append(" ").append(objekt.getAvatud()).append(" ").append(objekt.getMuutja()).append(" ").append(objekt.getMuudetud()).toString();
        }
        
    }
    
    static class ee.itcollege.intsidentspring.web.ApplicationConversionServiceFactoryBean.ObjektIntsidendisConverter implements Converter<ObjektIntsidendis, String> {
        public String convert(ObjektIntsidendis objektIntsidendis) {
            return new StringBuilder().append(objektIntsidendis.getAvaja()).append(" ").append(objektIntsidendis.getAvatud()).append(" ").append(objektIntsidendis.getMuutja()).append(" ").append(objektIntsidendis.getMuudetud()).toString();
        }
        
    }
    
    static class ee.itcollege.intsidentspring.web.ApplicationConversionServiceFactoryBean.PiiriloikConverter implements Converter<Piiriloik, String> {
        public String convert(Piiriloik piiriloik) {
            return new StringBuilder().append(piiriloik.getAvaja()).append(" ").append(piiriloik.getAvatud()).append(" ").append(piiriloik.getMuutja()).append(" ").append(piiriloik.getMuudetud()).toString();
        }
        
    }
    
    static class ee.itcollege.intsidentspring.web.ApplicationConversionServiceFactoryBean.PiiririkkujaConverter implements Converter<Piiririkkuja, String> {
        public String convert(Piiririkkuja piiririkkuja) {
            return new StringBuilder().append(piiririkkuja.getAvaja()).append(" ").append(piiririkkuja.getAvatud()).append(" ").append(piiririkkuja.getMuutja()).append(" ").append(piiririkkuja.getMuudetud()).toString();
        }
        
    }
    
    static class ee.itcollege.intsidentspring.web.ApplicationConversionServiceFactoryBean.PiirivalvurConverter implements Converter<Piirivalvur, String> {
        public String convert(Piirivalvur piirivalvur) {
            return new StringBuilder().append(piirivalvur.getAvaja()).append(" ").append(piirivalvur.getAvatud()).append(" ").append(piirivalvur.getMuutja()).append(" ").append(piirivalvur.getMuudetud()).toString();
        }
        
    }
    
    static class ee.itcollege.intsidentspring.web.ApplicationConversionServiceFactoryBean.PiirivalvurIntsidendisConverter implements Converter<PiirivalvurIntsidendis, String> {
        public String convert(PiirivalvurIntsidendis piirivalvurIntsidendis) {
            return new StringBuilder().append(piirivalvurIntsidendis.getAvaja()).append(" ").append(piirivalvurIntsidendis.getAvatud()).append(" ").append(piirivalvurIntsidendis.getMuutja()).append(" ").append(piirivalvurIntsidendis.getMuudetud()).toString();
        }
        
    }
    
    static class ee.itcollege.intsidentspring.web.ApplicationConversionServiceFactoryBean.VahtkondConverter implements Converter<Vahtkond, String> {
        public String convert(Vahtkond vahtkond) {
            return new StringBuilder().append(vahtkond.getAvaja()).append(" ").append(vahtkond.getAvatud()).append(" ").append(vahtkond.getMuutja()).append(" ").append(vahtkond.getMuudetud()).toString();
        }
        
    }
    
    static class ee.itcollege.intsidentspring.web.ApplicationConversionServiceFactoryBean.VahtkondIntsidendisConverter implements Converter<VahtkondIntsidendis, String> {
        public String convert(VahtkondIntsidendis vahtkondIntsidendis) {
            return new StringBuilder().append(vahtkondIntsidendis.getAvaja()).append(" ").append(vahtkondIntsidendis.getAvatud()).append(" ").append(vahtkondIntsidendis.getMuutja()).append(" ").append(vahtkondIntsidendis.getMuudetud()).toString();
        }
        
    }
    
    static class ee.itcollege.intsidentspring.web.ApplicationConversionServiceFactoryBean.VahtkondPiiriloigulConverter implements Converter<VahtkondPiiriloigul, String> {
        public String convert(VahtkondPiiriloigul vahtkondPiiriloigul) {
            return new StringBuilder().append(vahtkondPiiriloigul.getAvaja()).append(" ").append(vahtkondPiiriloigul.getAvatud()).append(" ").append(vahtkondPiiriloigul.getMuutja()).append(" ").append(vahtkondPiiriloigul.getMuudetud()).toString();
        }
        
    }
    
}
