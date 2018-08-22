package com.sanshengshui.multitenant.mapper;

import com.sanshengshui.multitenant.pojo.BomDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface BomMapper {

    List<BomDO> list(Map<String, Object> map);

    int count(Map<String, Object> map);

}
