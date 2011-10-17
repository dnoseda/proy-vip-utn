package vip.utn
import grails.converters.*
import groovyx.net.http.RESTClient

class ItemService {

	static transactional = false

	def getItem(String itemId) {
		RESTClient rest = new RESTClient()

		Object resp = rest.get([uri: "http://ec2-67-202-25-72.compute-1.amazonaws.com:8080", path : '/items/MLA123456', contentType : JSON])

		println resp.getStatus()

		int size = resp.responseData.available();

		char[] theChars = new char[size];
		byte[] bytes    = new byte[size];

		resp.responseData.read(bytes, 0, size);
		for (int i = 0; i < size;){
			theChars[i] = (char)(bytes[i++]&0xff);
		}

		String result = new String(theChars);

		return JSON.parse(result)
	}
}
