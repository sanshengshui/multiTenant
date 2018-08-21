package com.sanshengshui.multitenant.controller;

import com.sanshengshui.multitenant.mapper.BomMapper;
import com.sanshengshui.multitenant.pojo.BomDO;
import com.sanshengshui.multitenant.utils.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class TestController {

    @Autowired
    BomMapper bomMapper;

    //简化，直接通过这里设置session
    @GetMapping("/set/{sess}")
    @ResponseBody
    public Object setSession(@PathVariable("sess") String sess){
        HttpSession httpSession= SessionUtil.getSession();
        httpSession.setAttribute("corp",sess);
        return "ok";
    }

    @ResponseBody
    @GetMapping("/list")
    public List<BomDO> list(){
        Map<String, Object> query = new HashMap<>(16);
        List<BomDO> bomList = bomMapper.list(query);
        return bomList;
    }
    
    @GetMapping("/count")
    @ResponseBody
    public Object getCount(){
        //要测试的方法
        Map<String, Object> map = new HashMap<String, Object>();
        return bomMapper.count(map);
    }

    
}
