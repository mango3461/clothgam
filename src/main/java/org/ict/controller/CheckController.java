package org.ict.controller;


import org.ict.domain.MemberVO;
import org.ict.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/member/*")
public class CheckController {

	@Autowired
	private MemberService service;
	
	@PostMapping(value="/check/{mid}", consumes="application/json",
			// XML, JSON을 모두 처리하려면 아래와 같이
			// produces에 MediaType을 두개 이상 넣습니다.
				produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<MemberVO> getIdCheck(@PathVariable String mid) {
		
		try {
			MemberVO vo = service.getUserInfo(mid);
			return new ResponseEntity<MemberVO>(vo, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		
	}
}
