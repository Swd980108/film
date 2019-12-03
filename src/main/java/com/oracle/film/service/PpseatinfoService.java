package com.oracle.film.service;

import com.oracle.film.pojo.Ppseatinfo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PpseatinfoService {

    public List<Ppseatinfo> listAllppseat();
    public List<Ppseatinfo> queryAllppseatBypaipianid(int paipianid);
}
