package cn.xuhe.action;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import cn.xuhe.entity.Enterprise;
import cn.xuhe.entity.Ephoto;
import cn.xuhe.entity.Photo;
import cn.xuhe.entity.Student;
import cn.xuhe.service.PhotoService;
import cn.xuhe.service.EnterpriseService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class EPhotoAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private File file;
	private String text;
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	private String fileFileName;
	private String fileContentType;
	private Map<String,Object> session;
	private PhotoService photoService;
	private EnterpriseService enterpriseService;
	private Map<String,Object> result;
	private int id;//photoid
	private int enterpriseid;
	public String upload() throws Exception{
		
		session = ActionContext.getContext().getSession();
		if(file==null){
			return "fail";
		}
//		Student student = (Student)session.get("user");
//		String url = ServletActionContext.getServletContext().getRealPath("/photo");
//		String filename = getTimeStamp()+"."+getExt();
//		System.out.println(url + fileFileName + "    " + text);
//		File image = new File(url,filename);
//		FileUtils.copyFile(file, image);
//		photoService.savePhoto(filename, student.getStudentid(),text);
//        return SUCCESS;
		
		session = ActionContext.getContext().getSession();
		Enterprise enterprise = (Enterprise)session.get("user");
		String url = ServletActionContext.getServletContext().getRealPath("/ephoto");
		System.out.println(url + fileContentType);
		File image = new File(url,enterprise.getId()+fileFileName);
		FileUtils.copyFile(file, image);
		photoService.saveEPhoto(enterprise.getId()+fileFileName, enterprise.getId(),text);
        return SUCCESS;
	}
	public String uploadAvatar() throws Exception{
		session = ActionContext.getContext().getSession();
		Enterprise enterprise = (Enterprise)session.get("user");
		String url = ServletActionContext.getServletContext().getRealPath("/image");
		
		String[] tempName = fileFileName.split("\\.");//用于获取后缀
		int size = tempName.length;
		String newFileName = enterprise.getId()+"Avatar."+tempName[size-1];
		File image = new File(url,newFileName);//如果格式相同，将直接覆盖原来的文件
		//System.out.println(newFileName);
		FileUtils.copyFile(file, image);
		enterpriseService.saveAvatar(newFileName,enterprise.getId());
		
        return SUCCESS;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public EnterpriseService getEnterpriseService() {
		return enterpriseService;
	}
	public void setEnterpriseService(EnterpriseService enterpriseService) {
		this.enterpriseService = enterpriseService;
	}
	public String list() throws Exception{
		session = ActionContext.getContext().getSession();
		int id = ((Enterprise)session.get("user")).getId();
		List<Ephoto> photos = photoService.listAllEPhotos(id);
		result = new HashMap<String,Object>();
		result.put("result", photos);
		return SUCCESS;
	}
	public String list1() throws Exception{
		session = ActionContext.getContext().getSession();
		int id = ((Enterprise)session.get("enterprise")).getId();
		List<Ephoto> photos = photoService.listAllEPhotos(id);
		result = new HashMap<String,Object>();
		result.put("result", photos);
		return SUCCESS;
	}
	public String delete() throws Exception{
		result = new HashMap<String,Object>();
		boolean flag = photoService.deleteOneEPhoto(id);
		result.put("result", flag);
		return SUCCESS;
	}
	public File getFile() {
		return file;
	}
	
	public String listfour(){
		result = new HashMap<String,Object>();
		Vector<Ephoto> photos = photoService.engetfour(enterpriseid);
		if(photos.size()==0)
			result.put("result", "null");
		else
			result.put("result", photos);
		return SUCCESS;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public PhotoService getPhotoService() {
		return photoService;
	}

	public void setPhotoService(PhotoService photoService) {
		this.photoService = photoService;
	}
	public Map<String, Object> getResult() {
		return result;
	}
	public void setResult(Map<String, Object> result) {
		this.result = result;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEnterpriseid() {
		return enterpriseid;
	}
	public void setEnterpriseid(int enterpriseid) {
		this.enterpriseid = enterpriseid;
	}
}
