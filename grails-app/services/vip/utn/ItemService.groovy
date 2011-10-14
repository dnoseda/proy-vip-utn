package vip.utn
import grails.converters.*

class ItemService {

    static transactional = false

	def getItem(String itemId) {
		String key = itemId

		File baseDir = new File("mocks/items/")
		File itemFile = new File(baseDir,"${key}.json")
		if(itemFile.exists()){
			String jsonText = itemFile.getText()
			return JSON.parse(jsonText)
		}else{
			return null
		}
	}
}
