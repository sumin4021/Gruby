package sm.p.gruby.home.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {
    
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    
    @GetMapping(value={"/", ""})
    public String index() {
        logger.debug("test2");
        return "home/index";
    }
    
    
}
