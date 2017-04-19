package pix.gdc.com.util;

import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;

import com.drew.imaging.ImageMetadataReader;
import com.drew.imaging.ImageProcessingException;
import com.drew.metadata.Directory;
import com.drew.metadata.Metadata;
import com.drew.metadata.Tag;

import pix.gdc.com.vo.Geodata;

public class MetaDataUtil {
	
	public static void main(String[] args){
		
		MetaDataUtil util = new MetaDataUtil();
		
		/*File file = new File("/Users/apple/Dropbox/20160320_135904.jpg");
		try {
			util.getMeta(file);
		} catch (ImageProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		util.convertAngleTodecimal("128° 53' 27\"");
		util.convertAngleTodecimal("37° 45' 10\"");
	}
	
	//get Geolocation from Image
	public Geodata getMeta(File file) throws ImageProcessingException, IOException{
		Metadata metadata = ImageMetadataReader.readMetadata(file);
		
		Geodata geo = new Geodata();
		
		for (Directory directory : metadata.getDirectories()) {
		    for (Tag tag : directory.getTags()) {
		        System.out.format("[%s] - %s = %s",
		            directory.getName(), tag.getTagName(), tag.getDescription());
		        if(tag.getTagName().equals("GPS Latitude")){
		        	geo.setLatitude(tag.getDescription());
		        }
		        if(tag.getTagName().equals("GPS Longitude")){
		        	geo.setLongitude(tag.getDescription());
		        }
		    }
		    if (directory.hasErrors()) {
		        for (String error : directory.getErrors()) {
		            System.err.format("ERROR: %s", error);
		        }
		    }
		}
		
		return geo;
	}
	
	//37° 45' 10", 128° 53' 27" => 128.890833 소숫점 6자리!
	public String convertAngleTodecimal(String param){
		int degIdx = param.indexOf("°");
		int minIdx = param.indexOf("'");
		//int secIdx = param.indexOf("\"");
		Double deg = Double.parseDouble(param.substring(0, degIdx));
		Double min = Double.parseDouble(param.substring(minIdx-2, minIdx));
		Double sec = Double.parseDouble(param.substring(minIdx+1, minIdx+3));
		
		double tempResult = (double) ((min*60+sec)/3600)+deg;
		DecimalFormat format = new DecimalFormat(".######");
		String result = format.format(tempResult);
		
		System.out.println(result);
		
		return result;
	}

}
