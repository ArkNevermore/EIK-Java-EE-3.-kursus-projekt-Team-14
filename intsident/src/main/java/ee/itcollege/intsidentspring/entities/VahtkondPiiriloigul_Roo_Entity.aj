// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.intsidentspring.entities;

import ee.itcollege.intsidentspring.entities.VahtkondPiiriloigul;
import java.lang.Long;
import javax.persistence.Entity;

privileged aspect VahtkondPiiriloigul_Roo_Entity {
    
    declare @type: VahtkondPiiriloigul: @Entity;
    
    public static VahtkondPiiriloigul VahtkondPiiriloigul.findVahtkondPiiriloigul(Long id) {
        if (id == null) return null;
        return entityManager().find(VahtkondPiiriloigul.class, id);
    }
    
}
