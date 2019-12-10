package cbb.web.controller;

import cbb.domain.UserInfo;
import cbb.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    //用户登录
    @RequestMapping(value = "/{username}", produces = "text/html;charset=UTF-8")
    public ModelAndView userLogin(@PathVariable String username) {
        ModelAndView mv = new ModelAndView();
        UserInfo userInfo = userService.findByUserName(username);
        //若为系统管理员，则跳转至系统管理员管理页面
        if (userInfo.getUsername().equals("admin")){
            mv.setViewName("user-admin");
        } else{//若为普通用户则跳转至个人管理页面
            mv.setViewName("user-show");
        }
        mv.addObject("user",userInfo);
        return mv;

    }

    //用户管理
    @RequestMapping("/usertest/admin")
    public ModelAndView userAdmin(@RequestParam(name = "page", required = true, defaultValue = "1") int page, @RequestParam(name = "size", required = true, defaultValue = "4") int size){
        ModelAndView mv = new ModelAndView();
        //设置分页插件
        PageHelper.startPage(page, size);
        List<UserInfo> userInfoList = userService.findAll(page,size);
        //PageInfo就是一个分页Bean
        PageInfo pageInfoUsers = new PageInfo(userInfoList);
        int myPages=pageInfoUsers.getPages();
//        int myPageSize=pageInfoUsers.getPageSize();
//        int count=myPages*myPageSize;
        mv.addObject("pageInfoUsers",pageInfoUsers);
        mv.setViewName("user-admin");
        return mv;
    }

    //用户删除，Pathvariable的参数取决于user-admin页面传入的参数为id还是username
    @RequestMapping(value = "/{username}/delete")
    public ModelAndView delete(@PathVariable String username) throws UnsupportedEncodingException {
        ModelAndView mv =  new ModelAndView();
        userService.deleteByUserName(username);
        mv.setViewName("redirect:/user/usertest/admin"+".do");
        return mv;
    }

    //页面点击用户信息修改图标，去数据库查询该用户id，并返回用户更新信息修改页面
    @RequestMapping(value = "/{id}/update" )
    public ModelAndView update(@PathVariable String id){
        ModelAndView mv =  new ModelAndView();
        UserInfo userInfo = userService.findByUserId(id);
        mv.addObject("user",userInfo);
        mv.setViewName("user-update");
        return mv;
    }

    //用户修改后更新至数据库
    @RequestMapping(value = "/{id}/updateuserbyid")
    public ModelAndView updateById(UserInfo user){
        ModelAndView mv =  new ModelAndView();
        userService.updateUserById(user);
        mv.setViewName("redirect:/user/usertest/admin"+".do");
        return mv;
    }


}
