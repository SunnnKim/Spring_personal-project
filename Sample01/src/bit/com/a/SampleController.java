package bit.com.a;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SampleController {
	
	private static Logger logger = LoggerFactory.getLogger(SampleController.class);
	
	
	@RequestMapping(value="intro.do",method=RequestMethod.GET)
	public String intro() {
		logger.info("SampleController intro.do: " + new Date());
		logger.info("Here is intro controller.");
		
		
		return "main";	// view로 이동함 
	}
	
	@RequestMapping(value="detail.do",method=RequestMethod.GET)
	public String detail(Model model, String name, int age) {
		
		logger.info("SampleController detail.do " + new Date());
		logger.info("name:" + name);
		logger.info("age:" + age);
		
		model.addAttribute("name", name);
		model.addAttribute("age", age);
		
		
		return "detail";
	}
	
	@ResponseBody
	@RequestMapping(value="goAjax.do",method=RequestMethod.GET, produces = "application/String; charset=utf-8")
	public String goAjax(String name ) {
		logger.info("SampleController detail.do " + new Date());
		logger.info("name:"+name);
		
		String sendStr = "Ajax에서 보낸 문자열 :" + name 
							+ ", 받은 문자열 : send Ajax data";
		
		return sendStr;
	}
}
