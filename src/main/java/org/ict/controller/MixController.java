package org.ict.controller;

import java.util.List;

import org.ict.domain.CgDowncVO;
import org.ict.domain.CgUpcVO;
import org.ict.domain.ClosetVO;
import org.ict.domain.LikeVO;
import org.ict.service.MixService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;



@RestController
@RequestMapping("/mix/*")
public class MixController {

	@Autowired
	MixService service;
	
	@GetMapping(value="/upList", 
				produces = {MediaType.APPLICATION_XML_VALUE,
							MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<CgUpcVO>> upList() {
		ResponseEntity<List<CgUpcVO>> entity = null;
		
		try {
			entity = new ResponseEntity<>(service.getUpList(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	@GetMapping(value="/downList", 
				produces = {MediaType.APPLICATION_XML_VALUE,
							MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<List<CgDowncVO>> downList() {
		ResponseEntity<List<CgDowncVO>> entity = null;
		
		try {
			entity = new ResponseEntity<>(service.getDownList(), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	@RequestMapping(method=RequestMethod.POST, value="/closet",
			consumes = "application/json", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> clothMix(@RequestBody ClosetVO vo) {
		// 먼저 상태코드와 데이터를 함께 전송할 수 있도록
		// ResponseEntity를 미리 선언해둡니다.
		ResponseEntity<String> entity = null;
		try {
			// 전달받은 vo를 이용해 리플 추가
			service.closetMix(vo);
			// try블럭내에서 문제 없었을 경우 200코드 전송
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/like",
			consumes = "application/json", produces = MediaType.TEXT_PLAIN_VALUE)
	public ResponseEntity<String> likeMix(@RequestBody LikeVO vo) {
		// 먼저 상태코드와 데이터를 함께 전송할 수 있도록
		// ResponseEntity를 미리 선언해둡니다.
		ResponseEntity<String> entity = null;
		try {
			// 전달받은 vo를 이용해 리플 추가
			service.likeMix(vo);
			// try블럭내에서 문제 없었을 경우 200코드 전송
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
	

