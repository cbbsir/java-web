package cbb.web.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class ControllerTest {

    @RequestMapping("/hello.do")
    public String test1(){
        return "Hello,  The World Welcome You！";
    }

}
