package Dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import org.springframework.stereotype.Component;
import sprimg.mvc.pr1Dto.EmployeeDto;

@Component
public class Dao {
    private EntityManagerFactory EMF = Persistence.createEntityManagerFactory("SPRING");
    private EntityManager EM = EMF.createEntityManager();
    private EntityTransaction ET = EM.getTransaction();

    public String insert(EmployeeDto dto) {
        ET.begin();
        EM.persist(dto);
        ET.commit();
        return "Data inserted";
    }

    public List<EmployeeDto> fetchAll() {
        Query q = EM.createQuery("SELECT d FROM EmployeeDto d");
        List<EmployeeDto> l = q.getResultList();
        return l;
    }
// fetchByid
    
    
    public EmployeeDto fetchById(int id) {
        return EM.find(EmployeeDto.class, id);
    }
    
    // delteByid

    public String deleteById(int id) {
        EmployeeDto dto = EM.find(EmployeeDto.class, id);
        if (dto != null) {
            ET.begin();
            EM.remove(dto);
            ET.commit();
            return "Data deleted";
        }
        return "Data not found";
    }
    //deleteAll

    public String deleteAll() {
        ET.begin();
        Query q = EM.createQuery("DELETE FROM EmployeeDto");
        int deletedCount = q.executeUpdate();
        ET.commit();
        return deletedCount + " records deleted";
    }
}
