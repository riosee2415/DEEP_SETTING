package com.deep.maininfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainInfoService {
	@Autowired
	MainInfoDao Mdao;
	
	public List<MainInfoVo> getList() {
		return Mdao.getList();
	}
	
}
