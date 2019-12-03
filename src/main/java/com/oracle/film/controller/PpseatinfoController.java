package com.oracle.film.controller;


import com.oracle.film.pojo.Ppseatinfo;
import com.oracle.film.service.PpseatinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@CrossOrigin
@RestController
@RequestMapping("/ppseatinfo")
public class PpseatinfoController {

    @Autowired
    private PpseatinfoService ppseatinfoService;

    @RequestMapping("/listAllppseat")
    public List<Ppseatinfo> listAllppseat(){
        return ppseatinfoService.listAllppseat();
    }

    @RequestMapping("/queryAllppseatBypaipianid")
    public List<Ppseatinfo> queryAllppseatBypaipianid(int paipianid){
        return ppseatinfoService.queryAllppseatBypaipianid(paipianid);
    }

}
