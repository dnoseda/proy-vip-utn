package vip.utn
import java.io.StringReader
import net.sf.json.JSON
import net.sf.json.groovy.JsonSlurper


class ItemService {

    static transactional = false

	def getItem(String itemId) {
		String key = itemId

		File baseDir = new File("mocks/items/")
		File itemFile = new File(baseDir,"${key}.json")
		if(itemFile.exists()){
			String jsonText = itemFile.getText()
			return JsonParser.parse(jsonText)
		}else{
			return null
		}
	}
	def parse(jsonString) throws Exception {
		StringReader reader= new StringReader(jsonString);
		try {
			JSON jsonParsed= new JsonSlurper().parse(reader);
			return jsonParsed;
		} catch ( e) {
			throw new Exception("Error parsing ["+jsonString+"]", e);
		}
	}


}
