package sk.maha.system_property;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;

public class SystemPropertiesDemo {

	Properties properties = System.getProperties();
		
	Enumeration props = properties.propertyNames();
		
	/**
	 * Create a list of system properties.
	 * 
	 * @return a list of system properties
	 */
	public List<String> createPropertiesList() {
		List<String> s = new ArrayList<>();
		String s0 = new String();
		while (props.hasMoreElements()) {
			s0 = (String) props.nextElement();
			s.add(s0);
		}
		return s;
	}
}
