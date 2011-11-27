// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.intsidentspring.entities;

import ee.itcollege.intsidentspring.entities.TEST_DONOTDELETE;
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

privileged aspect TEST_DONOTDELETE_Roo_Entity {
    
    declare @type: TEST_DONOTDELETE: @Entity;
    
    @PersistenceContext
    transient EntityManager TEST_DONOTDELETE.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long TEST_DONOTDELETE.id;
    
    @Version
    @Column(name = "version")
    private Integer TEST_DONOTDELETE.version;
    
    public Long TEST_DONOTDELETE.getId() {
        return this.id;
    }
    
    public void TEST_DONOTDELETE.setId(Long id) {
        this.id = id;
    }
    
    public Integer TEST_DONOTDELETE.getVersion() {
        return this.version;
    }
    
    public void TEST_DONOTDELETE.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void TEST_DONOTDELETE.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void TEST_DONOTDELETE.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            TEST_DONOTDELETE attached = TEST_DONOTDELETE.findTEST_DONOTDELETE(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void TEST_DONOTDELETE.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void TEST_DONOTDELETE.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public TEST_DONOTDELETE TEST_DONOTDELETE.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        TEST_DONOTDELETE merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager TEST_DONOTDELETE.entityManager() {
        EntityManager em = new TEST_DONOTDELETE().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long TEST_DONOTDELETE.countTEST_DONOTDELETEs() {
        return entityManager().createQuery("SELECT COUNT(o) FROM TEST_DONOTDELETE o", Long.class).getSingleResult();
    }
    
    public static List<TEST_DONOTDELETE> TEST_DONOTDELETE.findAllTEST_DONOTDELETEs() {
        return entityManager().createQuery("SELECT o FROM TEST_DONOTDELETE o", TEST_DONOTDELETE.class).getResultList();
    }
    
    public static TEST_DONOTDELETE TEST_DONOTDELETE.findTEST_DONOTDELETE(Long id) {
        if (id == null) return null;
        return entityManager().find(TEST_DONOTDELETE.class, id);
    }
    
    public static List<TEST_DONOTDELETE> TEST_DONOTDELETE.findTEST_DONOTDELETEEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM TEST_DONOTDELETE o", TEST_DONOTDELETE.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
