package com.vti.ultis.properties;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class MesProperties {
	public static final String RESOURCE_PATH="H:\\Testing_system_11\\src\\main\\java\\resources\\mes.properties";
	private Properties properties;
	
	public MesProperties() throws FileNotFoundException, IOException {
		properties=new Properties();
		properties.load(new FileInputStream(RESOURCE_PATH)); // ko sử lý exepsition
	}
	public String getValue(String key)
	{
		return properties.getProperty(key);
	}
	

}
