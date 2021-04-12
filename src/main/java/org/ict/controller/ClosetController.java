package org.ict.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.ict.domain.CgDowncVO;
import org.ict.domain.CgUpcVO;
import org.ict.domain.ClosetDTO;
import org.ict.domain.ClosetVO;
import org.ict.service.ClosetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/closet/*")
public class ClosetController {

	@Autowired
	private ClosetService service;
	
	@GetMapping(value="/{mno}", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<Map<String, Object>> closetList(@PathVariable("mno") Integer mno) {
		
		ResponseEntity<Map<String, Object>> entity = null;
		
		Map<String, Object> result = new HashMap<>();
		
		List<ClosetVO> list = service.closetList(mno);

		List<ClosetDTO> resultList = new ArrayList<>();
		list.forEach(closetVO -> {
			CgUpcVO up = service.closetUp(closetVO.getCgUpcNo());
			CgDowncVO down = service.closetDown(closetVO.getCgDowncNo());
			ClosetDTO dto = new ClosetDTO();
			dto.setCgUpcNo(up.getCgUpcNo());
			dto.setCgUpcGen(up.getCgUpcGen());
			dto.setCgUpcImg(up.getCgUpcImg());
			dto.setCgUpcLink(up.getCgUpcLink());
			dto.setCgDowncNo(down.getCgDowncNo());
			dto.setCgDowncGen(down.getCgDowncGen());
			dto.setCgDowncImg(down.getCgDowncImg());
			dto.setCgDowncLink(down.getCgDowncLink());
			//8개 필드에 넣고
			
			resultList.add(dto);
		});
		
		
		result.put("resultList", resultList);
		
		
		try {
			entity = new ResponseEntity<>(result, HttpStatus.OK);
		} catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
}
