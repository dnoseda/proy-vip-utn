package vip.utn

class VipController {

	ItemService itemService
	def index = {
		if(params.itemId){
			def item = itemService.getItem(params.itemId)
			if(item){
				return [item:item]
			}else{
				render (status:404,text:"not found")
			}
		}else{
			render (status:500, text:"needs item id")
		}
	}
}
