package com.jiaogai.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UeditorController {

	
    /** 
     *   图片上传 
     * @author CK 
     * @param upfile 
     * @param request 
     * @param response 
     * @return 
     * @throws Exception 
     * 
     */  
    @RequestMapping("/upload/img")  
    @ResponseBody  
    public String upload(@RequestParam("upfile") MultipartFile upfile,HttpServletRequest request, 
    		HttpServletResponse response) throws Exception {  
       request.setCharacterEncoding("utf-8");  
       response.setCharacterEncoding("utf-8");  
       String result = null;  
       String originalName = upfile.getOriginalFilename();//返回客户端文件的原始名称，eg:atv1.png  
   
       String imgFileSuffix = "";//图像文件的后缀  
       String mimeType = upfile.getContentType();  
       String supportedFormatTable[][] = {  
           {"image/png", ".png"},  
           {"image/bmp", ".bmp"},  
           {"image/jpg", ".jpg"},  
           {"image/gif", ".gif"},  
           {"image/jpeg", ".jpg"}  
       };  
   
       for (int i = 0; i < supportedFormatTable.length; ++i) {  
           if (supportedFormatTable[i][0].equals(mimeType)) {  
             imgFileSuffix = supportedFormatTable[i][1];  
               break;  
           }  
       }  
   
       //文件的前缀，eg:201503271453000025  
       String imgFilePrefix = new SimpleDateFormat("yyyyMMddHHmmssssss").format(Calendar.getInstance().getTime());  
       String newImgFileName = imgFilePrefix + imgFileSuffix;  
   
       String uploadPath = request.getSession().getServletContext().getRealPath("upload") + "/image";  
   
       // 拼装uuid  
         String uuid = "img_" + imgFilePrefix;  
   
         //删除已存在的文件  
         File uploadedFile1 = new File(uploadPath, newImgFileName);  
   
         if (uploadedFile1.exists()) {  
             uploadedFile1.delete();  
         }  
   
        /* //保存到数据库以及保存到相应的目录文件里  
         Resource oldResource = resourceService.get(uuid);  
   
         if (oldResource != null) {  
             File uploadedFile = new File(uploadPath, newImgFileName);  
              org.apache.commons.io.FileUtils.writeByteArrayToFile(uploadedFile, upfile.getBytes());  
              oldResource.setName(upfile.getOriginalFilename());  
              oldResource.setFileSize(FileUtils.getHumanReadableFileSize(upfile.getSize()));  
             oldResource.setUploadTime(new Date());  
             oldResource.setUuid(uuid);  
             oldResource.setStoreType(StoreType.IMAGE);  
             resourceService.update(oldResource);  
         } else {  
             File uploadedFile = new File(uploadPath, newImgFileName);  
              org.apache.commons.io.FileUtils.writeByteArrayToFile(uploadedFile, upfile.getBytes());  
             Resource resource = new Resource();  
             resource.setName(newImgFileName);  
              resource.setFileSize(FileUtils.getHumanReadableFileSize(upfile.getSize()));  
             resource.setUploadTime(new Date());  
             resource.setUuid(uuid);  
             resource.setStoreType(StoreType.IMAGE);  
             resourceService.save(resource);  
         }  */
   
         String projectUrl = "http://" + request.getServerName() //服务器地址  
                  + ":"  
                  + request.getServerPort()           //端口号  
                  + request.getContextPath();      //项目名称  
   
       //{"name":"10571402926855858.jpg", "originalName": "china.jpg", "size": 43086, "state": "SUCCESS", "type": ".jpg", "url": "upload/20140616/10571402926855858.jpg"}  
       // result返回的url参照IndexController._file方法  
   
       result = "{\"name\":\""+ newImgFileName +"\", \"originalName\": \""+ originalName +"\", \"size\": "+ upfile.getSize() +", \"state\": \"SUCCESS\", \"type\": \""+FileUtils.getFile(originalName)+"\", \"url\": \"" + projectUrl + "/upload/image/" + newImgFileName +"\"}";  
       result = result.replaceAll( "\\\\", "\\\\" );  
       return result;  
   }  
}
