class  WasmLoader {
  constructor(){
		this._imports = {
			"index" : {
				log(int) {
					console.log(int)
				}
			}
		}
	}

  async wasm(path,imports = this._imports){
    console.log(`Fetching ${path}`)
    if(!WebAssembly.instantiateStreaming){
      return this.wasmFallback(path)
    }
    const {instance} = await WebAssembly.instantiateStreaming(fetch(path),imports)
    return instance?.exports
  }
  async wasmFallback(path, imports = this._imports){
    console.log(`Using a fallback`)
    const response = await fetch(path)
    const bytes = await response?.arrayBuffer()
    const {instance} = WebAssembly.instance(bytes,imports)

    return instance?.exports
  }
}
