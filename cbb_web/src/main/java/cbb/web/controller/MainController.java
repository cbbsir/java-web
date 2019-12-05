package cbb.web.controller;

import cbb.domain.UserInfo;
import cbb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping("/")
public class MainController {

    @Autowired
    UserService userService;

//    @RequestMapping("/login.do")
//    public ModelAndView confirm(String userName,String Password){
//        ModelAndView mv = new ModelAndView();
//        UserInfo userInfo = userService.findByUserName(userName);
//        mv.addObject("user",userInfo);
//        mv.setViewName("user-show");
//
//        return mv;
//    }

    @PostMapping("login.do")
    public ModelAndView confirm(String userName,String password){
        ModelAndView mv = new ModelAndView();
        UserInfo userInfo= null;
        try {
            userInfo = userService.findByUserName(userName);
        }catch (Exception e){
            System.out.println("查无此人！");

        }
        mv.addObject("user",userInfo);


        if (userInfo!=null){
            /*if (userName.equals("admin")&&Password.equals(userInfo.getPassword())){
                mv.setViewName("redirect:/user/"+userName+".do");
            } else*/
            //若用户名、密码与数据库中匹配
            if (password.equals(userInfo.getPassword())){
                //使用java.net.URLEncoder.encode()方法解决浏览器转发时中文乱码问题
                mv.setViewName("redirect:/user/"+java.net.URLEncoder.encode(userName)+".do");
            }else{//否则跳转至/WEB-INF/htmlpages/index.html
                mv.setViewName("index");
            }
        }else{
            mv.setViewName("index");
            return mv;
        }
        return mv;
    }
}
