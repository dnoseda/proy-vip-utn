class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		name natural: "/articulo/${itemId}/${title}"{
			controller = "vip"
			action = "index"
		}
	
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
