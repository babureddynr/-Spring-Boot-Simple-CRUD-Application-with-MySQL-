package sprimg.mvc.pr1Dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class EmployeeDto {
    @Id
    private int eid;
    private String ename;

    // Getter for eid
    public int getEid() {
        return eid;
    }

    // Setter for eid
    public void setEid(int eid) {
        this.eid = eid;
    }

    // Getter for ename
    public String getEname() {
        return ename;
    }

    // Setter for ename
    public void setEname(String ename) {
        this.ename = ename;
    }

    @Override
    public String toString() {
        return "EmployeeDto [eid=" + eid + ", ename=" + ename + "]";
    }
}
