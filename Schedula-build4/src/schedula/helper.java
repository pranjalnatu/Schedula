package schedula;

import java.util.ArrayList;
import java.util.Map;
import java.util.logging.Level;

import com.google.appengine.api.datastore.Entity;

public class helper {

	public static String writeJSON(Iterable<Entity> entities) {
	    //logger.log(Level.INFO, "creating JSON format object");
	  	StringBuilder sb = new StringBuilder();
	  	
	  	int i = 0;
	  	sb.append("{\"data\": [");
	  	for (Entity result : entities) {
	  	  Map<String, Object> properties = result.getProperties();
	  	  sb.append("{");
	  	  if (result.getKey().getName() == null)
	  		sb.append("\"name\" : \"" + result.getKey().getId() + "\",");
	  	  else
	  		sb.append("\"name\" : \"" + result.getKey().getName() + "\",");
	  
	  	  for (String key : properties.keySet()) {
	  		sb.append("\"" + key + "\" : \"" + properties.get(key) + "\",");
	  	  }
	  	  sb.deleteCharAt(sb.lastIndexOf(","));
	  	  sb.append("},");
	  	  i++;
	  	}
	  	if (i > 0) {
	  	  sb.deleteCharAt(sb.lastIndexOf(","));
	  	}  
	  	sb.append("]}");
	  	return sb.toString();
	  }
	
	

	
	
	
	public static String writeJSONA(ArrayList<Entity> entities) {
	    //logger.log(Level.INFO, "creating JSON format object");
	  	StringBuilder sb = new StringBuilder();
	  	
	  	int i = 0;
	  	sb.append("{\"data\": [");
	  	for (i = 0;i<entities.size();i++) {
	  	  Map<String, Object> properties = entities.get(i).getProperties();
	  	  sb.append("{");
	  	  if (entities.get(i).getKey().getName() == null)
	  		sb.append("\"name\" : \"" + entities.get(i).getKey().getId() + "\",");
	  	  else
	  		sb.append("\"name\" : \"" + entities.get(i).getKey().getName() + "\",");
	  
	  	  for (String key : properties.keySet()) {
	  		sb.append("\"" + key + "\" : \"" + properties.get(key) + "\",");
	  	  }
	  	  sb.deleteCharAt(sb.lastIndexOf(","));
	  	  sb.append("},");
	  	  i++;
	  	}
	  	if (i > 0) {
	  	  sb.deleteCharAt(sb.lastIndexOf(","));
	  	}  
	  	sb.append("]}");
	  	return sb.toString();
	  }
	

	
	
	
	
	
	
	
	
}
