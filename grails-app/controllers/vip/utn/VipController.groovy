package vip.utn

class VipController {

	ItemService itemService
	def index = {
		if(params.itemId){
			//return [item:itemService.getItem(params.itemId)]
			return [item:itemService.getItem("MLA123385500")]
		}else{
			render status:500, body:"needs item id"
		}
	}
}
