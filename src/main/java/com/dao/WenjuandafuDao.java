package com.dao;

import com.entity.WenjuandafuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WenjuandafuVO;
import com.entity.view.WenjuandafuView;


/**
 * 问卷答复
 * 
 * @author 
 * @email 
 * @date 2023-02-21 09:46:06
 */
public interface WenjuandafuDao extends BaseMapper<WenjuandafuEntity> {
	
	List<WenjuandafuVO> selectListVO(@Param("ew") Wrapper<WenjuandafuEntity> wrapper);
	
	WenjuandafuVO selectVO(@Param("ew") Wrapper<WenjuandafuEntity> wrapper);
	
	List<WenjuandafuView> selectListView(@Param("ew") Wrapper<WenjuandafuEntity> wrapper);

	List<WenjuandafuView> selectListView(Pagination page,@Param("ew") Wrapper<WenjuandafuEntity> wrapper);
	
	WenjuandafuView selectView(@Param("ew") Wrapper<WenjuandafuEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<WenjuandafuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<WenjuandafuEntity> wrapper);
    
    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<WenjuandafuEntity> wrapper);



}
