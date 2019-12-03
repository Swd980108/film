package com.oracle.film.service.imp;



import com.oracle.film.dao.PpseatinfoDao;
import com.oracle.film.pojo.Ppseatinfo;
import com.oracle.film.service.PpseatinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ppseatinfo")
public class PpseatinfoServiceImp implements PpseatinfoService {

    @Autowired
    private PpseatinfoDao ppseatinfoDao;

    @Override
    public List<Ppseatinfo> listAllppseat() {
        return ppseatinfoDao.listAllppseat();
    }

    @Override
    public List<Ppseatinfo> queryAllppseatBypaipianid(int paipianid) {
        return ppseatinfoDao.queryAllppseatBypaipianid(paipianid);
    }
}
