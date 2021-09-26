package sm.p.gruby.home.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeCTRL {
    
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @GetMapping(value="/")
    public String index() {
        System.out.println("incomming index page ");
        logger.debug("test");
        logger.debug("test2");
        return "home/index";
    }
    
    
}