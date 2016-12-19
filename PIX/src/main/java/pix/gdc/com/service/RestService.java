package pix.gdc.com.service;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.drew.imaging.ImageProcessingException;

import pix.gdc.com.util.FileUtil;
import pix.gdc.com.util.MetaDataUtil;
import pix.gdc.com.vo.Geodata;

@Service
public class RestService {
	private static final String filePath = "/home/ubuntu/base/image/"; //server
	//private static final String filePath = "/Users/Kay/Documents/base/"; //client
	
	
	@Resource(name="fileUtil")
	FileUtil fileUtil;
	
	public String[] writeFileToServer(MultipartFile image){
		String[] returnString = {"","",""};
		
		File file = new File(filePath);
        if(file.exists() == false){
            file.mkdirs();
        }
        Date timeStamp = new Date();
        String originalFileName = image.getOriginalFilename();
        String originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
        String storedFileName = originalFileName.hashCode()+"_"+timeStamp.getTime()+originalFileExtension;
        
        
        file = new File(filePath + storedFileName);
        
        System.out.println(file.getAbsolutePath());
        
        
        try {
			image.transferTo(file);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        
        MetaDataUtil metaUtil = new MetaDataUtil();
        Geodata geodata = new Geodata();
        
        try {
			geodata = metaUtil.getMeta(file);
		} catch (ImageProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        returnString[0] = storedFileName;
        returnString[1] = geodata.getLatitude();
        returnString[2] = geodata.getLongitude();    
        
        return returnString;
	}
}
