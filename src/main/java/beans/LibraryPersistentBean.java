package beans;

import entity.Movie;
import java.util.Collection;
import javax.ejb.Singleton;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Singleton
public class LibraryPersistentBean {

    @PersistenceContext(unitName="esa")
    private EntityManager entityManager;

    public Collection<Movie> getMovies() {
        return entityManager.createQuery("SELECT c FROM Movie c", Movie.class).getResultList();
    }
}
