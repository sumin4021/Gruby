package sm.p.gruby.user.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class UserController {

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @GetMapping("/login")
    public String login() {
        logger.info("login");
        return "user/login";
    }


}
