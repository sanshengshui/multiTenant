package com.sanshengshui.multitenant.mapper;

import com.sanshengshui.multitenant.pojo.BomDO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface BomMapper {
    BomDO get(Long cateId);

    List<BomDO> list(Map<String, Object> map);

    int count(Map<String, Object> map);

    int save(BomDO bom);

    int update(BomDO bom);

    int remove(Long cate_id);

    int batchRemove(Long[] cateIds);

    Long[] listParentBom();

    int getBomInfoNumber(Long cateId);

    List<BomDO> getComponentNameList();

    BomDO getBomByCode(String cateCode);

    List<BomDO> listParent();
}
