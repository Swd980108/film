package com.oracle.film.dao;

import com.oracle.film.pojo.Ppseatinfo;
import org.apache.ibatis.annotations.Mapper;
import org.omg.PortableServer.LIFESPAN_POLICY_ID;

import java.util.List;

@Mapper
public interface PpseatinfoDao {

    public List<Ppseatinfo> listAllppseat();

    public List<Ppseatinfo> queryAllppseatBypaipianid(int paipianid);

}
