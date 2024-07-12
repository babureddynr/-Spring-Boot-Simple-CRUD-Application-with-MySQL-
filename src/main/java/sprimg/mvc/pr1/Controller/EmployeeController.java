package sprimg.mvc.pr1.Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.ResponseBody;
import Dao.Dao;
import sprimg.mvc.pr1Dto.EmployeeDto;

@Controller
public class EmployeeController {

    @Autowired
    private Dao dao;

    @RequestMapping("/insert")
    @ResponseBody
    public String ticketbook(@ModelAttribute EmployeeDto dto) {
        System.out.println(dto);
        return dao.insert(dto);
    }

    @RequestMapping("/fetch")
    public ModelAndView fetch() {
        List<EmployeeDto> l = dao.fetchAll();
        ModelAndView view = new ModelAndView("fetchall.jsp");
        view.addObject("object", l);
        return view;
    }

    @RequestMapping("/fetchById")
    public ModelAndView fetchById(@RequestParam("id") int id) {
        EmployeeDto employee = dao.fetchById(id);
        ModelAndView view = new ModelAndView("fetchById.jsp");
        view.addObject("employee", employee);  // Ensure 'employee' attribute is added to the view
        return view;
    }

    // Method to show the delete form
    @RequestMapping("/showDeleteForm")
    public ModelAndView showDeleteForm() {
        return new ModelAndView("deleteByIdForm.jsp");
    }

    // Method to handle the deleteById request and display the result
    @RequestMapping("/deleteById")
    public ModelAndView deleteById(@RequestParam("id") int id) {
        String result = dao.deleteById(id);
        ModelAndView view = new ModelAndView("deleteResult.jsp");
        view.addObject("result", result);
        return view;
    }

    @RequestMapping("/deleteAll")
    public ModelAndView deleteAll() {
        String result = dao.deleteAll();
        ModelAndView view = new ModelAndView("deleteResult.jsp");
        view.addObject("result", result);
        return view;
    }
}
