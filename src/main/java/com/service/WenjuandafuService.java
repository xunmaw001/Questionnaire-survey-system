package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.WenjuandafuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.WenjuandafuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.WenjuandafuView;


/**
 * 问卷答复
 *
 * @author 
 * @email 
 * @date 2023-02-21 09:46:06
 */
public interface WenjuandafuService extends IService<WenjuandafuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<WenjuandafuVO> selectListVO(Wrapper<WenjuandafuEntity> wrapper);
   	
   	WenjuandafuVO selectVO(@Param("ew") Wrapper<WenjuandafuEntity> wrapper);
   	
   	List<WenjuandafuView> selectListView(Wrapper<WenjuandafuEntity> wrapper);
   	
   	WenjuandafuView selectView(@Param("ew") Wrapper<WenjuandafuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<WenjuandafuEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<WenjuandafuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<WenjuandafuEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<WenjuandafuEntity> wrapper);



}

