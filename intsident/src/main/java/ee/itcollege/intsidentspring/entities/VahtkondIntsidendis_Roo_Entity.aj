// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.intsidentspring.entities;

import ee.itcollege.intsidentspring.entities.VahtkondIntsidendis;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VahtkondIntsidendis_Roo_Entity {
    
    declare @type: VahtkondIntsidendis: @Entity;
    
    @PersistenceContext
    transient EntityManager VahtkondIntsidendis.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long VahtkondIntsidendis.id;
    
    @Version
    @Column(name = "version")
    private Integer VahtkondIntsidendis.version;
    
    public Long VahtkondIntsidendis.getId() {
        return this.id;
    }
    
    public void VahtkondIntsidendis.setId(Long id) {
        this.id = id;
    }
    
    public Integer VahtkondIntsidendis.getVersion() {
        return this.version;
    }
    
    public void VahtkondIntsidendis.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void VahtkondIntsidendis.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void VahtkondIntsidendis.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            VahtkondIntsidendis attached = VahtkondIntsidendis.findVahtkondIntsidendis(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void VahtkondIntsidendis.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void VahtkondIntsidendis.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public VahtkondIntsidendis VahtkondIntsidendis.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        VahtkondIntsidendis merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager VahtkondIntsidendis.entityManager() {
        EntityManager em = new VahtkondIntsidendis().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long VahtkondIntsidendis.countVahtkondIntsidendises() {
        return entityManager().createQuery("SELECT COUNT(o) FROM VahtkondIntsidendis o", Long.class).getSingleResult();
    }
    
    public static List<VahtkondIntsidendis> VahtkondIntsidendis.findAllVahtkondIntsidendises() {
        return entityManager().createQuery("SELECT o FROM VahtkondIntsidendis o", VahtkondIntsidendis.class).getResultList();
    }
    
    public static VahtkondIntsidendis VahtkondIntsidendis.findVahtkondIntsidendis(Long id) {
        if (id == null) return null;
        return entityManager().find(VahtkondIntsidendis.class, id);
    }
    
    public static List<VahtkondIntsidendis> VahtkondIntsidendis.findVahtkondIntsidendisEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM VahtkondIntsidendis o", VahtkondIntsidendis.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
