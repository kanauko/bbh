package com.bdqn.bbh.controller;

import com.bdqn.bbh.entity.User;
import com.bdqn.bbh.mapper.UserMapper;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class BbhController {
//    @Autowired
//    private UserMapper userMapper;

    @RequestMapping
    public String index(){
        return "welcome";
 }
    @RequestMapping("welcome")
    public String welcome(){
        return "welcome";
 }

    @RequestMapping("/hello")
    public String hello(){
        return "hello";
    }

//    @RequestMapping("/userList")
//    public String userList(@RequestParam(value = "pageNum",defaultValue = "1")int pageNum, User user, Model model){
//        if (user.getName()!=null){
//            user.setName("%"+user.getName()+"%");
//        }
//        PageHelper.startPage(pageNum,2);
//        List<User> userList= userMapper.list(user);
//        return "userList";
//    }



}
