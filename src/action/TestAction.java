package action;

import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String[] uid;
	private String[]upass;
	public String execute() throws Exception{		
		System.out.println("收到请求");
		ActionContext context=ActionContext.getContext();
		context.put("msg", "成功");
		System.out.println(uid[0]);
		return SUCCESS;
	}
	public String[] getUid() {
		return uid;
	}
	public void setUid(String[] uid) {
		this.uid = uid;
	}
	public String[] getUpass() {
		return upass;
	}
	public void setUpass(String[] upass) {
		this.upass = upass;
	}
}
