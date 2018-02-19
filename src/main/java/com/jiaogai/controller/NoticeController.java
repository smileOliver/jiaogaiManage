package com.jiaogai.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jiaogai.commons.base.BaseController;
import com.jiaogai.commons.result.PageInfo;
import com.jiaogai.model.Notice;
import com.jiaogai.model.User;
import com.jiaogai.service.INoticeService;
/**
 * 公告管理
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/notice")
public class NoticeController extends BaseController{

	@Autowired
	private INoticeService noticeService;
	
	 /**
     * 公告信息管理页
     *
     * @return
     */
    @GetMapping("/manager")
    public String manager() {
        return "admin/notice/notice";
    }
	
	 @PostMapping("/dataGrid")
	 @ResponseBody
	 public Object dataGrid(Integer page, Integer rows, String sort, String order,
			 HttpServletRequest request) {
        PageInfo pageInfo = new PageInfo(page, rows, sort, order);
        noticeService.selectDataGrid(pageInfo); 
        return pageInfo;
	 }
	 /**
	  * 添加页面
	  */
	 @GetMapping("/addPage")
	 public String addPage() {
		 return "/admin/notice/noticeAdd";
	 }
	 /**
	  * 添加权限
	  * @param notice
	  * @return
	  */
	 @PostMapping("/add")
	 @ResponseBody
	 public Object add(@Valid Notice notice){
		 //获取session数据
	     Subject subject = SecurityUtils.getSubject();
         User user=(User) subject.getSession().getAttribute("user");
         notice.setUserId(user.getId());
         notice.setUserName(user.getName());
		 notice.setCreateTime(new Date());
		 noticeService.insert(notice);
		 return 200;
	 }
	 /**
	  * 删除权限
	  */
	 @RequestMapping("/delete")
	 @ResponseBody
	 public Object delete(Long id){
		 noticeService.deleteById(id);
		 return renderSuccess("删除成功! ");
	 }
	 /**
	  * 编辑权限页
	  */
	 @GetMapping("/editPage")
	 public String eidtPage(Model model, Long id){
		 Notice notice=noticeService.selectById(id);
		 model.addAttribute("notice", notice);
		 return "/admin/notice/noticeEdit";
	 }
	 /**
	  * 编辑权限
	  */
	 @RequestMapping("/edit")
	 @ResponseBody
	 public Object update(@Valid Notice notice){
		 noticeService.updateById(notice);
		 return renderSuccess("编辑成功! ");
	 }
	 
}
